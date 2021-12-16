package com.purple.oembed.service;

import com.purple.oembed.model.Instagram;
import com.purple.oembed.model.Twitter;
import com.purple.oembed.model.Vimeo;
import com.purple.oembed.model.YouTube;
import lombok.extern.slf4j.Slf4j;
import org.springframework.stereotype.Service;
import org.springframework.web.client.RestTemplate;
import org.springframework.web.util.UriComponentsBuilder;

import java.net.URI;
import java.net.URISyntaxException;
import java.nio.charset.StandardCharsets;
import java.util.Base64;
import java.util.HashMap;
import java.util.Map;

@Service
@Slf4j
public class OembedService {

    static final String INSTAGRAM="https://api.instagram.com/oembed";
    static final String YOUTUBE="https://www.youtube.com/oembed";
    static final String VIMEO="https://vimeo.com/api/oembed.json";
    static final String TWITTER="https://publish.twitter.com/oembed";

    public Map<String,Object> findContentInfo(String url) {
        Map<String,Object> channelResponse=new HashMap<>();
        RestTemplate restTemplate=new RestTemplate();
        //도메인 가져오기
        String domain="";
        try {
            domain=getDomainName(url);
        } catch (URISyntaxException e) {
            e.printStackTrace();
        }

        log.info("domain: {}",domain);

        if(domain.contains("instagram")){
            //인스타그램
            URI uri=UriComponentsBuilder.fromUriString(INSTAGRAM)
                            .queryParam("url",url)
                            .build().toUri();

            Instagram response=restTemplate.getForObject(uri,Instagram.class);
            channelResponse.put("INSTAGRAM",response);
            return channelResponse;
        }else if(domain.contains("youtube")){
            //유튜브
            URI uri=UriComponentsBuilder.fromUriString(YOUTUBE)
                    .queryParam("url",url)
                    .queryParam("format","json")
                    .build().toUri();
            YouTube response=restTemplate.getForObject(uri,YouTube.class);
            channelResponse.put("YOUTUBE",response);
            return channelResponse;
        }else if(domain.contains("vimeo")){
            //비메오
            URI uri=UriComponentsBuilder.fromUriString(VIMEO)
                    .queryParam("url",url)
                    .build().toUri();
            Vimeo response=restTemplate.getForObject(uri,Vimeo.class);
            channelResponse.put("VIMEO",response);
            return channelResponse;
        }else if(domain.contains("twitter")){
            //트위터
            URI uri=UriComponentsBuilder.fromUriString(TWITTER)
                    .queryParam("url",url)
                    .build().toUri();
            Twitter response=restTemplate.getForObject(uri,Twitter.class);
            channelResponse.put("TWITTER",response);
            return channelResponse;
        }

        return null;
    }

    //도메인 식별
    public String getDomainName(String url) throws URISyntaxException {
        URI uri=new URI(url);
        String domain=uri.getHost();
        return domain.startsWith("www.")?domain.substring(4):domain;
    }
}

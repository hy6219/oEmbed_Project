package com.purple.oembed.controller;

import com.purple.oembed.service.OembedService;
import lombok.extern.slf4j.Slf4j;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import java.util.Map;

@Controller
@RequestMapping("/oEmbed")
@Slf4j
public class OembedController {

    @Autowired
    private OembedService oembedService;

    @GetMapping("/find")
    public String findContentInfo(Model model, @RequestParam String url){
        //어떤 채널에 대한 응답인지 쉽게 판별하기 위한 key-value structure
        Map<String,Object> response=oembedService.findContentInfo(url);
        //채널키값 확인용 플래그 변수
        boolean channelFlag=false;

        log.info("uri:{}",url);
        log.info("response: {}",response);

        if(response==null){
            //vimeo,twitter,instagram,youtube 외의 채널이 요구된 경우
            //기본 페이지를 return해줄 것
        }else if((channelFlag=response.containsKey("INSTAGRAM"))){
            //인스타그램

        }else if((channelFlag=response.containsKey("YOUTUBE"))){
            //유튜브
        }else if((channelFlag=response.containsKey("VIMEO"))){
            //비메오

        }else if((channelFlag=response.containsKey("TWITTER"))){
            //트위터
        }
        return "/common/header";
    }

}

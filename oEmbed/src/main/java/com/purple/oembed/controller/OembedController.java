package com.purple.oembed.controller;

import com.purple.oembed.service.OembedService;
import lombok.extern.slf4j.Slf4j;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import java.util.Map;

@Controller
@RequestMapping("/oEmbed")
@Slf4j
public class OembedController {

    @Autowired
    private OembedService oembedService;

    @GetMapping("/")
    public String index(){
        return "index";
    }

    @RequestMapping(value="/find",method = RequestMethod.GET)
    public ModelAndView findContentInfo(@RequestParam String url){
        //어떤 채널에 대한 응답인지 쉽게 판별하기 위한 key-value structure
        Map<String,Object> response=oembedService.findContentInfo(url);
        //채널키값 확인용 플래그 변수
        boolean channelFlag=false;
        ModelAndView model=new ModelAndView();

        log.info("uri:{}",url);
        log.info("response: {}",response);

        if(response==null){
            //vimeo,twitter,instagram,youtube 외의 채널이 요구된 경우
            //기본 페이지를 return해줄 것
            model.setViewName("/common/basic");
        }else if((channelFlag=response.containsKey("INSTAGRAM"))){
            //인스타그램
            model.addObject("instagram",response.get("INSTAGRAM"));
            model.setViewName("/instagram/instagram");
        }else if((channelFlag=response.containsKey("YOUTUBE"))){
            //유튜브
            model.addObject("youtube",response.get("YOUTUBE"));
            model.setViewName("/youtube/youtube");
        }else if((channelFlag=response.containsKey("VIMEO"))){
            //비메오
            model.addObject("vimeo",response.get("VIMEO"));
            model.setViewName("/vimeo/vimeo");
        }else if((channelFlag=response.containsKey("TWITTER"))){
            //트위터
            model.addObject("twitter",response.get("TWITTER"));
            model.setViewName("/twitter/twitter");
        }
        return model;
    }

}

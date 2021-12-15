package com.purple.oembed.model;

import com.fasterxml.jackson.databind.PropertyNamingStrategies;
import com.fasterxml.jackson.databind.annotation.JsonNaming;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;
import org.springframework.stereotype.Component;

@Component
@Data
@NoArgsConstructor
@AllArgsConstructor
@JsonNaming(PropertyNamingStrategies.SnakeCaseStrategy.class)
public class Vimeo {
    private String type;
    private String version;
    private String providerName;
    private String providerUrl;
    private String title;
    private String authorName;
    private String authorUrl;
    private String isPlus;
    private String accountType;
    private String html;
    private Integer width;
    private Integer height;
    private Integer duration;
    private String description;
    private String thumbnailUrl;
    private Integer thumbnailWidth;
    private Integer thumbnailHeight;
    private String thumbnailUrlWithPlayButton;
    private String uploadDate;
    private Long videoId;
    private String uri;
}

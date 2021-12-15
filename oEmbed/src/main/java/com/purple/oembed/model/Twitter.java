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
public class Twitter {
    private String version;
    private String uri;
    private String authorName;
    private String authorUrl;
    private String html;
    private Integer width;
    private Integer height;
    private String type;
    private String cacheAge;
    private String providerName;
    private String providerUrl;
}

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
public class YouTube {
    private String version;
    private String title;
    private String authorName;
    private String authorUrl;
    private String providerName;
    private String providerUrl;
    private String type;
    private Integer width;
    private Integer height;
    private String html;
    private String thumbnailUrl;
    private Integer thumbnailWidth;
    private Integer thumbnailHeight;
}

<?php

/**
 * editor.md 配置选项，请查阅官网：https://pandao.github.io/editor.md/ 了解具体设置项
 * 这里只列出一些比较重要的可配置项
 * 请注意，这里的配置项值必须为字符串型的 `ture` 或 `false`
 */
return [
    'width'=>'100%', 
    'height'=>'640',
    'emoji' => 'true',  
    'toc' => 'true',  
    'tocm' => 'false',  
    'taskList' => 'true',  
    'flowChart' => 'false', 
    'tex' => 'false', 
    'imageUpload' => 'false', 
    'saveHTMLToTextarea' => 'true',  
    'codeFold' => 'true', 
    'sequenceDiagram' => 'false', 
    'waterMarkType' => 'text', 
    'textWaterColor' => '#0B94C1', 
    'textWaterContent' => '', 
    'imageWaterPath' => public_path('vendor/editor.md/images/water_mark.png'), //水印图片地址
    'example' => true 
];

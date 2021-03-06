package com.xyu.core.spring;

import com.alibaba.fastjson.JSON;
import com.alibaba.fastjson.serializer.SerializerFeature;
import org.springframework.http.HttpInputMessage;
import org.springframework.http.HttpOutputMessage;
import org.springframework.http.MediaType;
import org.springframework.http.converter.AbstractHttpMessageConverter;
import org.springframework.http.converter.HttpMessageNotReadableException;
import org.springframework.http.converter.HttpMessageNotWritableException;

import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.io.OutputStream;
import java.nio.charset.Charset;

/**
 * @author Xiang.Yu
 * @version 0.0.1
 * @date 2015/10/20
 * @description HttpMessageConverter
 */
public class MappingFastJsonHttpMessageConverter extends AbstractHttpMessageConverter<Object>{

    public static final Charset DEFAULT_CHARSET = Charset.forName("utf-8");

    //fastjson params
    private SerializerFeature[] serializerFeatures;

    public MappingFastJsonHttpMessageConverter() {
        super(new MediaType("application","json",DEFAULT_CHARSET));
    }

    @Override
    public boolean canRead(Class<?> clazz,MediaType mediaType) {
        // JavaType javaType = getJavaType(clazz);
        // return this.objectMapper.canDeserialize(javaType) &&
        // canRead(mediaType);
        return true;
    }

    @Override
    public boolean canWrite(Class<?> clazz,MediaType mediaType) {
        // return this.objectMapper.canSerialize(clazz) && canWrite(mediaType);
        return true;
    }
    @Override
    protected boolean supports(Class<?> aClass) {
        // should not be called, since we override canRead/Write instead
        throw new UnsupportedOperationException();
    }

    @Override
    protected Object readInternal(Class<?> clazz, HttpInputMessage inputMessage) throws IOException, HttpMessageNotReadableException {
        ByteArrayOutputStream baos = new ByteArrayOutputStream();
        int i;
        while ((i = inputMessage.getBody().read()) != -1) {
            baos.write(i);
        }
        return JSON.parseArray(baos.toString(), clazz);
    }

    @Override
    protected void writeInternal(Object o, HttpOutputMessage outputMessage) throws IOException, HttpMessageNotWritableException {
        String jsonString = JSON.toJSONString(o, serializerFeatures);
        OutputStream out = outputMessage.getBody();
        out.write(jsonString.getBytes(DEFAULT_CHARSET));
        out.flush();
    }

    public SerializerFeature[] getSerializerFeatures() {
        return serializerFeatures;
    }

    public void setSerializerFeatures(SerializerFeature[] serializerFeatures) {
        this.serializerFeatures = serializerFeatures;
    }
}

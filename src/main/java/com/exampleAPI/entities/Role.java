package com.exampleAPI.entities;

import lombok.Data;
import org.springframework.data.annotation.Id;
import org.springframework.data.mongodb.core.mapping.Document;

import java.io.Serializable;

@Document("Roles")
@Data
public class Role implements Serializable {

    @Id
    private String id;
    private String roleName;
}

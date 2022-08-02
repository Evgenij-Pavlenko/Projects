package com.example.springsecurity.demo.model;

import javax.validation.constraints.NotNull;
import javax.validation.constraints.Size;

import com.example.springsecurity.demo.validation.FieldMatch;
import com.example.springsecurity.demo.validation.ValidEmail;

@FieldMatch.List({
        @FieldMatch(first = "password", second = "matchingPassword", message = "The password fields must match")})
public class CrmUser {
    @NotNull(message = "is required")
    @Size(min = 1, message = "is required")
    private String userName;
    @NotNull(message = "is required")
    @Size(min = 1, message = "is required")
    private String password;
    @NotNull(message = "is required")
    @Size(min = 1, message = "is required")
    private String matchingPassword;
    @NotNull(message = "is required")
    @Size(min = 1, message = "is required")
    private String firstName;


}




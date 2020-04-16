package ro.siit.model;

import java.util.UUID;

public class User {
    private UUID id;
    private String username;
    private String password;

    public UUID getId() {
        return id;
    }

    public String getUsername() {
        return username;
    }

    public String getPassword() {
        return password;
    }

    public User(UUID id, String username, String password) {
        this.id = id;
        this.username = username;
        this.password = password;
    }
}

package com.mycompany.app;

/**
 * Vorx Company Backend App Running!
 */
public class App
{

    private final String message = "Vorx Company Backend App Running!";

    public App() {}

    public static void main(String[] args) {
        System.out.println(new App().getMessage());
    }

    private final String getMessage() {
        return message;
    }

}

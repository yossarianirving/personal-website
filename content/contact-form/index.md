---
title: "Contact Form"
date: 2022-11-23T14:29:59-05:00
draft: false
---

<style>
    [for=email] {
        padding-right: 45px;
    }
    [for=password] {
        padding-right: 6px;
    }
    #response {
        color: red;
    }
</style>    
Hello!

You received this link because Chris' automated reply system identified your message as BUSINESS.
He is open to business opportunities including, but not limited to:

* Buying and selling property (2 properties up for sale)
* Rental property
* Co-branding
* Marketing

To contact him, please login or create an account and use the contact form.

<form id="passwordPurgatory">
    <label for="email">Email:</label><input id="email" placeholder="enter email"></br>
    <label for="password">Password:</label><input autocapitalize="none" autocorrect="off" id="password" name="password" placeholder="enter password" spellcheck="false" type="password"></br>
    <p id="response"></p>
    <button type="submit">Create Account or Login</button>
</form>
<script src="https://passwordpurgatory.com/make-hell.js"></script> 

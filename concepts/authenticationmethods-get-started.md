---
title: "Get started with the Microsoft Graph authentication methods API"
description: "The authentication methods API in Microsoft Graph gives organizations the ability to programmatically manage their users' authentication methods, getting users registered to do multi-factor authentication (MFA) and self-service password reset (SSPR)."
author: "mmcla"
localization_priority: Priority
ms.prod: "microsoft-identity-platform"
---

# Get started with the Microsoft Graph authentication methods API

[Authentication methods](https://docs.microsoft.com/azure/active-directory/authentication/concept-authentication-methods) are the ways that users authenticate in Azure Active Directory (AD). Authentication methods in Azure AD include password and phone (for example, SMS and voice calls), which are manageable in Microsoft Graph today, among many others such as FIDO2 security keys and the Microsoft Authenticator app. Authentication methods are used in primary, second-factor, and step-up authentication, and also in the self-service password reset (SSPR) process.

The authentication method APIs are used to manage a user's authentication methods. For example:

* You can add a phone number to a user. The user can then use that phone number for SMS and voice call authentication if they're enabled to use it by policy.
* You can update that number, or delete it from the user.
* You can enable or disable the number for SMS sign-in.
* You can reset a user's password.

These APIs are a key tool to manage your users' authentication methods.

This tutorial will get you started using the auth method APIs!

## Step 1: authenticate to Azure AD with the right roles and permissions

Using your favorite [tool for interacting with Microsoft Graph](https://docs.microsoft.com/en-us/graph/use-the-api#tools-for-interacting-with-microsoft-graph), sign in using an account with one of these roles:

* Global administrator
* Privileged authentication administrator
* Authentication administrator

Next, modify your permissions. We'll use [UserAuthenticationMethod.ReadWrite.All](https://docs.microsoft.com/graph/permissions-reference#user-authentication-method-permissions-preview) for this tutorial, so make sure it's enabled in Graph Explorer or your app.

Once the scope is assigned and consented, you can start using the API. Our examples use a standard user named Avery Howard. You should use a preexisting test account or create a new one following [these instructions](https://docs.microsoft.com/azure/active-directory/fundamentals/add-users-azure-active-directory#add-a-new-user). These APIs are live so don't test them on real users!

## Step 2: check the user's authentication methods

Let's make a call to see the user's authentication methods. We take the URL to see a user's profile and add `/authentication/methods`:

### Request

```http
GET https://graph.microsoft.com/beta/users/avery.howard@wingtiptoysonline.com/authentication/methods
```

### Response

```json
{
    "@odata.context": "https://graph.microsoft.com/beta/$metadata#users('avery.howard%40wingtiptoysonline.com')/authentication/methods",
    "value": [
        {
            "@odata.type": "#microsoft.graph.passwordAuthenticationMethod",
            "id": "28c10230-6103-485e-b985-444c60001490",
            "password": null,
            "creationDateTime": null
        }
    ]
}
```

## Step 3: add new phone numbers to the user

We see that as a new user, Avery just has a password registered. We'll give Avery a new mobile phone to use by making a `POST` request with the phone type and number in the body. We've also changed the end of the URL from `methods` to `phoneMethods` to tell the system it's a phone being added.

### Request

```http
POST https://graph.microsoft.com/beta/users/avery.howard@wingtiptoysonline.com/authentication/phoneMethods
Content-Type: application/json
```

```json
{
    "phoneType": "mobile",
    "phoneNumber": "+1 2065550123"
}
```

### Response

```json
{
    "@odata.context": "https://graph.microsoft.com/beta/$metadata#users('avery.howard%40wingtiptoysonline.com')/authentication/phoneMethods/$entity",
    "id": "3179e48a-750b-4051-897c-87b9720928f7",
    "phoneNumber": "+1 2065550123",
    "phoneType": "mobile",
    "smsSignInState": "ready"
}
```

Let's also add Avery's office number. We'll `POST` again to the same URL, but update the phone type and number:

### Request

```http
POST https://graph.microsoft.com/beta/users/avery.howard@wingtiptoysonline.com/authentication/phoneMethods
Content-Type: application/json
```

```json
{
    "phoneType": "office",
    "phoneNumber": "+1 4255550199"
}
```

### Response

```json
{
    "@odata.context": "https://graph.microsoft.com/beta/$metadata#users('avery.howard%40wingtiptoysonline.com')/authentication/phoneMethods/$entity",
    "id": "e37fc753-ff3b-4958-9484-eaa9425c82bc",
    "phoneNumber": "+1 4255550199",
    "phoneType": "office",
    "smsSignInState": "notSupported"
}
```

Do one more `GET` to the phone methods URL to see all of Avery's phone numbers:

### Request
 
```http
GET https://graph.microsoft.com/beta/users/avery.howard@wingtiptoysonline.com/authentication/phoneMethods
```

### Response

```json
{
    "@odata.context": "https://graph.microsoft.com/beta/$metadata#users('avery.howard%40wingtiptoysonline.com')/authentication/phoneMethods",
    "value": [
        {
            "id": "e37fc753-ff3b-4958-9484-eaa9425c82bc",
            "phoneNumber": "+1 4255550199",
            "phoneType": "office",
            "smsSignInState": "notSupported"
        },
        {
            "id": "3179e48a-750b-4051-897c-87b9720928f7",
            "phoneNumber": "+1 2065550123",
            "phoneType": "mobile",
            "smsSignInState": "ready"
        }
    ]
}
```

And we confirm that we see both numbers as expected!

## Step 4: remove a phone number from the user

Unfortunately, Avery is now working from home, so we'll remove her office number from her account. We'll call `DELETE` on her office phone URL, which we create by appending the office phone's ID to the phone methods URL. Look at Avery's list of phones above: her office phone ID starts with "e37f".

### Request

```http
DELETE https://graph.microsoft.com/beta/users/avery.howard@wingtiptoysonline.com/authentication/phoneMethods/e37fc753-ff3b-4958-9484-eaa9425c82bc
```

There's no data in the response because there's no more office phone, like we wanted. We can confirm it's gone by looking at all of Avery's methods—this is the same `GET` we made up above:

### Request

```http
GET https://graph.microsoft.com/beta/users/avery.howard@wingtiptoysonline.com/authentication/methods
```

### Response

```json
{
    "@odata.context": "https://graph.microsoft.com/beta/$metadata#users('avery.howard%40wingtiptoysonline.com')/authentication/methods",
    "value": [
        {
            "@odata.type": "#microsoft.graph.phoneAuthenticationMethod",
            "id": "3179e48a-750b-4051-897c-87b9720928f7",
            "phoneNumber": "+1 2065550123",
            "phoneType": "mobile",
            "smsSignInState": "ready"
        },
        {
            "@odata.type": "#microsoft.graph.passwordAuthenticationMethod",
            "id": "28c10230-6103-485e-b985-444c60001490",
            "password": null,
            "creationDateTime": null
        }
    ]
}
```

As expected, we're back to just one mobile phone and a password.

## Step 5: reset the user's password

While we're at it, Avery has forgotten her password, so let's reset it for her. For this reset, we'll make a `POST` to her password's URL (see the ID starting with "28c1" above in Avery's list of authentication methods), specifying the "resetPassword" action. We'll provide the new password in the request body.

### Request

```http
POST https://graph.microsoft.com/beta/users/avery.howard@wingtiptoysonline.com/authentication/passwordMethods/28c10230-6103-485e-b985-444c60001490/resetPassword
Content-Type: application/json
```

```json
{
    "newPassword": "29sdjfw#fajsdA_a_3an3223"
}
```

### Response

```text
Location: https://graph.microsoft.com/beta/users/ed178e23-7447-4892-baf8-fc46f8af26ce/authentication/operations/74bfa1a6-c0e0-4957-8c37-f91048f4959e?aadgdc=BY01P&aadgsu=ssprprod-a
```

Because this is syncing the password down to Active Directory in the tenant's on-prem infrastructure, it might take a few minutes, so we have an address where we can check to see if it's complete. This address is in the location header of the response, and to see the status we do a `GET` on that URL.

### Request

```http
GET https://graph.microsoft.com/beta/users/ed178e23-7447-4892-baf8-fc46f8af26ce/authentication/operations/74bfa1a6-c0e0-4957-8c37-f91048f4959e?aadgdc=BY01P&aadgsu=ssprprod-a
```

### Response

```json
{
    "@odata.context": "https://graph.microsoft.com/beta/$metadata#users('ed178e23-7447-4892-baf8-fc46f8af26ce')/authentication/operations/$entity",
    "id": "74bfa1a6-c0e0-4957-8c37-f91048f4959e",
    "createdDateTime": "2020-05-14T00:23:40Z",
    "lastActionDateTime": "2020-05-14T00:23:41Z",
    "status": "succeeded",
    "statusDetail": "ResetSuccess",
    "resourceLocation": "https://graph.microsoft.com/beta/users/ed178e23-7447-4892-baf8-fc46f8af26ce/authentication/methods/28c10230-6103-485e-b985-444c60001490"
}
```

And success! Great job! You've walked through seeing a user's profile, their auth methods, adding and removing phone numbers, and resetting their password. Now you're ready to go manage your own users' methods.

## API reference

Looking for the API reference for authentication methods?

- [Azure AD authentication methods API overview](/graph/api/resources/authenticationmethods-overview?view=graph-rest-beta)

## Next steps

- Find out how to [use the authentication method REST APIs](/graph/api/resources/authenticationmethods-overview?view=graph-rest-beta).
- Use Azure AD to [authenticate](/graph/auth) to Microsoft Graph.
- Integrate [Azure AD sign-in](https://azure.microsoft.com/develop/identity/signin/) into your app or website.
- See the [Changelog](changelog.md) for information about what's new in the Azure AD APIs.
- Explore [examples](https://developer.microsoft.com/graph/graph/examples) for more ideas about how to use Microsoft Graph.

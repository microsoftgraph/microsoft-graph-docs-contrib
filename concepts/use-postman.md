---
title: "Use Postman with the Microsoft Graph API"
description: "Use the Microsoft Graph Postman collection to get started with Microsoft Graph APIs in minutes."
author: "jthake-msft"
localization_priority: Priority
---

# Use Postman with the Microsoft Graph API

You can use the Microsoft Graph Postman collection to get started with Microsoft Graph APIs in minutes.

![Image of Postman](https://github.com/microsoftgraph/microsoftgraph-postman-collections/blob/master/images/postman.png?raw=true)

This article explains how to get up and running with Postman and Microsoft Graph. You can also explore Microsoft Graph APIs directly in your web browser by using [Microsoft Graph Explorer](https://developer.microsoft.com/en-us/graph/graph-explorer).

## Get the collection
You can access the collection in Postman in two ways: either just to consume it or to contribute back. You will need to have [Postman](https://www.getpostman.com/) running on your computer first.

### To consume the collection
This is the easiest way to get started and consume the Microsoft Graph APIs. The [Postman sharing link](https://www.getpostman.com/collections/d89a737b5f0c0825898a) will launch postman.

The benefit fo using the Shared Collection is as we add new requests they'll automatically show for you without any additional steps.

Once you have the collection, you'll need to set up teh environment variables.

**1.** Click **File | Import ...**.

**2.** Select **Import From Link**.

**3.** Copy and paste the following URL and click Import

`https://raw.githubusercontent.com/microsoftgraph/microsoftgraph-postman-collections/master/Microsoft%20Graph%20v1.0.postman_environment.json`

You should now see the **Microsoft Graph environment** in the top right environment drop down by the eye icon. Now you need to follow the [instructions below](#using-the-collection) to set up your environment.

### To contribute back
If you wish to contribute back your own requests, you will need to fork the [Microsoft Graph Postman collections](https://github.com/microsoftgraph/microsoftgraph-postman-collections) github repo. 

Check out this video to see how to do this
> [!VIDEO https://www.youtube-nocookie.com/embed/4tg-OBdv_8o]

To import the Postman collections follow these steps:

**1.** Download and register for [Postman](https://www.getpostman.com/).

**2.** Click **File | Import ...**.

**3.** Select **Import From Link**.

**4.** Paste the following two URLs and click Import after each.

`https://raw.githubusercontent.com/microsoftgraph/microsoftgraph-postman-collections/master/Microsoft%20Graph%20v1.0.postman_collection.json`

`https://raw.githubusercontent.com/microsoftgraph/microsoftgraph-postman-collections/master/Microsoft%20Graph%20v1.0.postman_environment.json`

You should now see the **Microsoft Graph v1.0** collection on the left had side Collections pane.

## Using the collection
Once you have **Microsoft Graph v1.0** collection and **Microsoftr Graph environment** in Postman Follow these steps.

### Set up application API calls
**1.** Click on the **No environment** drop down in top right hand corner.

**2.** Select **Microsoft Graph environment**.

**3.** Click the **eye** icon to the the right and then click **Edit**.

**4.** Enter in to the **current** (not **initial**) variables your Microsoft Identity Application: **ClientID**, **ClientSecret** ad **TenantID**. 

For more information on how to create a Application and to admin consent the app-only flow please read the [30 days of graph blog post series](https://developer.microsoft.com/en-us/graph/blogs/30daysmsgraph-day-13-postman-to-make-microsoft-graph-calls/).

**5.** Select **Update**. Close the **Manage Environments** dialog. In the **MicrosoftGraph v1.0 | Application** collection on left hand side. Click on the **Get App-only Access Token**. Then click **Send** button on right hand side.

**6.** Expand the **Application | Users** folder and click on **Get Users**. Then Click the **Send** button.

You are now up and running with Microsoft Graph v1.0 collections.

**NOTE:** that if you wish to run other APIs in the collection, you will need to consent the required permissions for your application.

### Set up on-behalf-of API calls
The simplest way of doing this is providing a **UserName** and **UserPassword** in the environment settings and use **On Behalf of a User | Get User Access Token** instead. 

**IMPORTANT:** It is not recommended to use production user accounts as this information is stored directly in Postman. This is also not a recommended approach for obtaining access tokens in production and should only be used for testing purposes.

For those those that do not want to store user names and passwords in environment variables in postman that get synced to your postman cloud account. You can use the native Postman **Get New Access Token** capability to obtain a token without leaving postman.

**1.** Select **On behalf of a User | Get Access Token using Postman**.

**2.** Click on the Authorization tab (besides Params).

**3.** Click get access token button.

**4.** Fill out the following boxes with your real tenant and application values. Note that you cannot use the environment variables here, it has to be the actual values. These can be found by clicking **EndPoints** in the application blade in portal.azure.com.

- Callback URL: https://app.getpostman.com/oauth2/callback

- Auth URL: https://login.microsoftonline.com/**TENANTID**/oauth2/v2.0/authorize

- Access Token URL: https://login.microsoftonline.com/**TENANTID**/oauth2/v2.0/token

- Client ID: **CLIENTID**

- Client Secret: **CLIENTSECRET**

- Scope: https://graph.microsoft.com/.default

- State: **RANDOMSTRING**

 
**5.** Click Request Token and you should see a UI prompt to sign in and consent permissions.

**6.** Then take the entire Access Token and open up your environment variables and paste it into the UserAccessToken.

Now all your requests will work.

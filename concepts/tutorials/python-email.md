---
title: Add email capabilities to Python apps using Microsoft Graph
description: Learn how to use Microsoft Graph to read and send email in Python apps
author: jasonjoh
ms.author: jasonjoh
ms.topic: how-to
ms.date: 05/30/2025
ms.localizationpriority: medium
---

# Add email capabilities to Python apps using Microsoft Graph

<!-- cSpell:ignore graphtutorial -->

In this article, you extend the application you created in [Build Python apps with Microsoft Graph](python.md) with Microsoft Graph mail APIs. You use Microsoft Graph to list the user's inbox and send an email.

## List user's inbox

Start by listing messages in the user's email inbox.

1. Add the following function to **graph.py**.

    :::code language="python" source="includes/python/src/user-auth/graphtutorial/graph.py" id="GetInboxSnippet":::

1. Replace the empty `list_inbox` function in **main.py** with the following.

    :::code language="python" source="includes/python/src/user-auth/graphtutorial/main.py" id="ListInboxSnippet":::

1. Run the app, sign in, and choose option 2 to list your inbox.

    ```bash
    Please choose one of the following options:
    0. Exit
    1. Display access token
    2. List my inbox
    3. Send mail
    4. Make a Graph call
    2
    Message: Updates from Ask HR and other communities
      From: Contoso Demo on Yammer
      Status: Read
      Received: 2022-04-26T19:19:05Z
    Message: Employee Initiative Thoughts
      From: Patti Fernandez
      Status: Read
      Received: 2022-04-25T19:43:57Z
    Message: Voice Mail (11 seconds)
      From: Alex Wilber
      Status: Unread
      Received: 2022-04-22T19:43:23Z
    Message: Our Spring Blog Update
      From: Alex Wilber
      Status: Unread
      Received: 2022-04-19T22:19:02Z
    Message: Atlanta Flight Reservation
      From: Alex Wilber
      Status: Unread
      Received: 2022-04-19T15:15:56Z
    Message: Atlanta Trip Itinerary - down time
      From: Alex Wilber
      Status: Unread
      Received: 2022-04-18T14:24:16Z

    ...

    More messages available? True
    ```

### get_inbox explained

Consider the code in the `get_inbox` function.

#### Accessing well-known mail folders

The function builds a request to the [List messages](/graph/api/user-list-messages) API. Because it includes the `mail_folders.by_mail_folder_id('inbox')` request builder, the API only returns messages in the requested mail folder. In this case, because the inbox is a default, well-known folder inside a user's mailbox, it's accessible via its well-known name. Nondefault folders are accessed the same way, by replacing the well-known name with the mail folder's ID property. For details on the available well-known folder names, see [mailFolder resource type](/graph/api/resources/mailfolder).

#### Accessing a collection

Unlike the `get_user` function from the previous section, which returns a single object, this method returns a collection of messages. Most APIs in Microsoft Graph that return a collection don't return all available results in a single response. Instead, they use [paging](/graph/paging) to return a portion of the results while providing a method for clients to request the next page.

##### Default page sizes

APIs that use paging implement a default page size. For messages, the default value is 10. Clients can request more (or less) by using the [$top](/graph/query-parameters#top-parameter) query parameter. In `get_inbox`, adding `$top` is accomplished with the `top` parameter in the `MessagesRequestBuilderGetQueryParameters` object.

> [!NOTE]
> The value passed in `$top` is an upper-bound, not an explicit number. The API returns a number of messages *up to* the specified value.

##### Getting subsequent pages

If there are more results available on the server, collection responses include an `@odata.nextLink` property with an API URL to access the next page. The Python SDK provides the `odata_next_link` property on collection page objects. If this property is present, there are more results available.

#### Sorting collections

The function uses the [$orderby query parameter](/graph/query-parameters#orderby-parameter) to request results sorted by the time the message is received (`receivedDateTime` property). It includes the `DESC` keyword so that messages received more recently are listed first. In `get_inbox`, adding `$orderby` is accomplished with the `orderby` parameter in the `MessagesRequestBuilderGetQueryParameters` object.

## Send mail

Now add the ability to send an email message as the authenticated user.

1. Add the following function to **graph.py**.

    :::code language="python" source="includes/python/src/user-auth/graphtutorial/graph.py" id="SendMailSnippet":::

1. Replace the empty `send_mail` function in **main.py** with the following.

    :::code language="python" source="includes/python/src/user-auth/graphtutorial/main.py" id="SendMailSnippet":::

1. Run the app, sign in, and choose option 3 to send an email to yourself.

    ```bash
    Please choose one of the following options:
    0. Exit
    1. Display access token
    2. List my inbox
    3. Send mail
    4. Make a Graph call
    3
    Mail sent.
    ```

    [!INCLUDE [dev-tenant-send-mail](includes/shared/dev-tenant-send-mail.md)]

1. To verify the message was received, choose option 2 to list your inbox.

### send_mail explained

Consider the code in the `send_mail` function.

#### Sending mail

The function uses the `user_client.me.send_mail` request builder, which builds a request to the [Send mail](/graph/api/user-sendmail) API.

#### Creating objects

Unlike the previous calls to Microsoft Graph that only read data, this call creates data. To create items with the client library, you create a dictionary representing the request payload, set the desired properties, then send it in the API call. Because the call is sending data, the `post` method is used instead of `get`.

## Next step

> [!div class="nextstepaction"]
> [Add additional Microsoft Graph APIs](python-extend-app.md)

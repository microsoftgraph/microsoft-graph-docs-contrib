---
title: Add email capabilities to .NET apps using Microsoft Graph
description: Learn how to use Microsoft Graph to read and send email in .NET apps
author: jasonjoh
ms.author: jasonjoh
ms.topic: how-to
ms.date: 05/30/2025
ms.localizationpriority: medium
---

# Add email capabilities to .NET apps using Microsoft Graph

In this article, you extend the application you created in [Build .NET apps with Microsoft Graph](dotnet.md) with Microsoft Graph mail APIs. You use Microsoft Graph to list the user's inbox and send an email.

## List user's inbox

Start by listing messages in the user's email inbox.

1. Open **./GraphHelper.cs** and add the following function to the **GraphHelper** class.

    :::code language="csharp" source="includes/dotnet/src/user-auth/GraphTutorial/GraphHelper.cs" id="GetInboxSnippet":::

1. Replace the empty `ListInboxAsync` function in **Program.cs** with the following.

    :::code language="csharp" source="includes/dotnet/src/user-auth/GraphTutorial/Program.cs" id="ListInboxSnippet":::

1. Run the app, sign in, and choose option 2 to list your inbox.

    ```Shell
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
      Received: 12/30/2021 4:54:54 AM -05:00
    Message: Employee Initiative Thoughts
      From: Patti Fernandez
      Status: Read
      Received: 12/28/2021 5:01:10 PM -05:00
    Message: Voice Mail (11 seconds)
      From: Alex Wilber
      Status: Unread
      Received: 12/28/2021 5:00:46 PM -05:00
    Message: Our Spring Blog Update
      From: Alex Wilber
      Status: Unread
      Received: 12/28/2021 4:49:46 PM -05:00
    Message: Atlanta Flight Reservation
      From: Alex Wilber
      Status: Unread
      Received: 12/28/2021 4:35:42 PM -05:00
    Message: Atlanta Trip Itinerary - down time
      From: Alex Wilber
      Status: Unread
      Received: 12/28/2021 4:22:04 PM -05:00

    ...

    More messages available? True
    ```

### GetInboxAsync explained

Consider the code in the `GetInboxAsync` function.

#### Accessing well-known mail folders

The function uses the `_userClient.Me.MailFolders["Inbox"].Messages` request builder, which builds a request to the [List messages](/graph/api/user-list-messages) API. Because it includes the `MailFolders["Inbox"]` request builder, the API only returns messages in the requested mail folder. In this case, because the inbox is a default, well-known folder inside a user's mailbox, it's accessible via its well-known name. Nondefault folders are accessed the same way, by replacing the well-known name with the mail folder's ID property. For details on the available well-known folder names, see [mailFolder resource type](/graph/api/resources/mailfolder).

#### Accessing a collection

Unlike the `GetUserAsync` function from the previous section, which returns a single object, this method returns a collection of messages. Most APIs in Microsoft Graph that return a collection don't return all available results in a single response. Instead, they use [paging](/graph/paging) to return a portion of the results while providing a method for clients to request the next page.

##### Default page sizes

APIs that use paging implement a default page size. For messages, the default value is 10. Clients can request more (or less) by using the [$top](/graph/query-parameters#top-parameter) query parameter. In `GetInboxAsync`, adding `$top` is accomplished with the `.Top(25)` method.

> [!NOTE]
> The value passed to `.Top()` is an upper-bound, not an explicit number. The API returns a number of messages *up to* the specified value.

##### Getting subsequent pages

If there are more results available on the server, collection responses include an `@odata.nextLink` property with an API URL to access the next page. The .NET client library provides the `NextPageRequest` property on collection page objects. If this property is non-null, there are more results available.

The `NextPageRequest` property exposes a `GetAsync` method which returns the next page.

#### Sorting collections

The function uses the `OrderBy` method on the request to request results sorted by the time the message is received (`ReceivedDateTime` property). It includes the `DESC` keyword so that messages received more recently are listed first. This method adds the [$orderby query parameter](/graph/query-parameters#orderby-parameter) to the API call.

## Send mail

Now add the ability to send an email message as the authenticated user.

1. Open **./GraphHelper.cs** and add the following function to the **GraphHelper** class.

    :::code language="csharp" source="includes/dotnet/src/user-auth/GraphTutorial/GraphHelper.cs" id="SendMailSnippet":::

1. Replace the empty `SendMailAsync` function in **Program.cs** with the following.

    :::code language="csharp" source="includes/dotnet/src/user-auth/GraphTutorial/Program.cs" id="SendMailSnippet":::

1. Run the app, sign in, and choose option 3 to send an email to yourself.

    ```Shell
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

### SendMailAsync explained

Consider the code in the `SendMailAsync` function.

#### Sending mail

The function uses the `_userClient.Me.SendMail` request builder, which builds a request to the [Send mail](/graph/api/user-sendmail) API. The request builder takes a `Message` object representing the message to send.

#### Creating objects

Unlike the previous calls to Microsoft Graph that only read data, this call creates data. To create items with the client library, you create an instance of the class representing the data (in this case, `Microsoft.Graph.Message`) using the `new` keyword, set the desired properties, then send it in the API call. Because the call is sending data, the `PostAsync` method is used instead of `GetAsync`.

## Next step

> [!div class="nextstepaction"]
> [Add additional Microsoft Graph APIs](dotnet-extend-app.md)

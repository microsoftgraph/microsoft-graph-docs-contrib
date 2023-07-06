---
title: "Get started with the Microsoft Graph command-line interface (CLI)"
description: "Get started with the Microsoft Graph command-line interface by using it perform some basic tasks."
ms.localizationpriority: medium
author: jasonjoh
---

# Get started with the Microsoft Graph command-line interface (CLI)

In this topic, you'll use the Microsoft Graph command-line interface (CLI) to perform some basic tasks. If you haven't already [installed the CLI](installation.md), do so before following this guide.

[!INCLUDE [cli-preview](../../includes/cli-preview.md)]

## API version

The Microsoft Graph CLI uses the [Microsoft Graph REST API v1.0](/graph/api/overview?view=graph-rest-1.0&preserve-view=true).

## Authentication

The Microsoft Graph CLI supports two types of authentication: delegated access, and app-only access. In this topic, you'll use delegated access to sign in as a user, grant consent to the CLI to act on your behalf, and call Microsoft Graph.

For details about using app-only access for unattended scenarios, see [Use app-only authentication with the Microsoft Graph command-line interface (CLI)](app-only.md).

### Determine required permission scopes

Each API in Microsoft Graph is protected by one or more permission scopes. The user signing in must consent to one of the required scopes for the APIs you plan to use. In this example, you'll use the following APIs:

- [Get user](/graph/api/user-get?view=graph-rest-1.0&preserve-view=true) to find the user ID of the logged-in user
- [List joinedTeams](/graph/api/user-list-joinedteams?view=graph-rest-1.0&preserve-view=true) to get the Teams the user is a member of.
- [List channels](/graph/api/channel-list?view=graph-rest-1.0&preserve-view=true) to get the channels in a Team.
- [Send message](/graph/api/channel-post-messages?view=graph-rest-1.0&preserve-view=true) to send a message to a Team channel.

The `User.Read`, `Team.ReadBasic.All`, `Channel.ReadBasic.All`, and `ChannelMessage.Send` permission scopes will enable these calls.

### Sign in

Use the `mgc login` command to sign in with the required scopes.

```bash
mgc login --scopes User.Read Team.ReadBasic.All Channel.ReadBasic.All ChannelMessage.Send
```

The command prompts you to go to a web page to sign in using a device code. When you've done that, the command completes. You only need to sign in once per session.

> [!TIP]
> You can add additional permissions by repeating the `mgc login` command with the new permission scopes.

## Call Microsoft Graph

Now that you're signed in, you can start making calls to Microsoft Graph.

[!INCLUDE [aad-advanced-queries-note](../../includes/aad-advanced-queries-note.md)]

### Get the signed-in user

In this section, you'll locate the signed-in user and get their user ID. You'll need that to use as a parameter to the other commands you'll use later. Start by running the following command.

```bash
mgc me get
```

This command outputs a JSON representation of the signed-in user.

```json
{
  "@odata.context": "https://graph.microsoft.com/v1.0/$metadata#users/$entity",
  "businessPhones": [
    "\u002B1 412 555 0109"
  ],
  "displayName": "Megan Bowen",
  "givenName": "Megan",
  "jobTitle": "Marketing Manager",
  "mail": "MeganB@contoso.com",
  "mobilePhone": null,
  "officeLocation": "12/1110",
  "preferredLanguage": "en-US",
  "surname": "Bowen",
  "userPrincipalName": "MeganB@contoso.com",
  "id": "4db673f0-3c2a-4d45-a9d9-3a4a8c63af6e"
}
```

You can use an [OData query parameters](../query-parameters.md) to customize the response. For example, to request only the user's display name, you can use the `--select` option.

```bash
mgc me get --select displayName
```

### List the user's joined teams

Now use the `mgc me joined-teams list` command to list the user's joined teams.

```bash
mgc me joined-teams list --select displayName,id
```

```json
{
  "@odata.context": "https://graph.microsoft.com/v1.0/$metadata#teams(displayName,id)",
  "@odata.count": 5,
  "value": [
    {
      "id": "ab41a24e-ed63-4725-abb7-d22f90a4fdc3",
      "displayName": "Sales and Marketing"
    },
    {
      "id": "6520aa84-f197-489c-b79e-a2614a5a2ad0",
      "displayName": "Mark 8 Project Team"
    },
    {
      "id": "e7bc29ba-7794-4df9-8f35-fce723b15fe4",
      "displayName": "Retail"
    },
    {
      "id": "22cf3814-dbef-4eb0-abe3-759b320b7d76",
      "displayName": "Digital Initiative Public Relations"
    },
    {
      "id": "76708e21-b4ad-431e-9394-4ee7536d17bf",
      "displayName": "U.S. Sales"
    }
  ]
}
```

Compare this command to the previous command used to get the signed-in user. Instead of `get`, this command uses `list`. This is because this command will return multiple items. Select one of the user's joined teams and copy its `id`.

### List team channels

Now use the team's ID as a parameter to the `mgc teams channels list` command.

```bash
mgc teams channels list --team-id ab41a24e-ed63-4725-abb7-d22f90a4fdc3 --select displayName,id
```

```json
{
  "@odata.context":
"https://graph.microsoft.com/v1.0/$metadata#teams(\u0027ab41a24e-ed63-4725-abb7-d22f90a4fdc3\u0027)/channels(displayName
,id)",
  "@odata.count": 2,
  "value": [
    {
      "id": "19:9194c1a65d9c478fa0dc1d5cd5bdf18a@thread.tacv2",
      "displayName": "Monthly Reports"
    },
    {
      "id": "19:YlJvOa8M094qgkEgjJR7l6AogKx9jDsLpuXsl7O8Ft81@thread.tacv2",
      "displayName": "General"
    }
  ]
}
```

Select one of the channels and copy its `id`.

### Send a message

Now that you have both the Team ID and the channel ID, you can post a message to the channel. Use the following command to send the message.

```bash
mgc teams channels messages create --team-id ab41a24e-ed63-4725-abb7-d22f90a4fdc3 --channel-id 19:YlJvOa8M094qgkEgjJR7l6AogKx9jDsLpuXsl7O8Ft81@thread.tacv2 --body '{"body": {"content": "Hello world!"}, "importance": "urgent"}'
```

This command differs from the previous commands you used. Instead of querying data, it's actually creating something. In Microsoft Graph, this command translates to an HTTP `POST`, and it requires an object in the body of that post. In this case, the object is a [chatMessage](/graph/api/resources/chatmessage). The `--body` parameter accepts a JSON representation of a `chatMessage`.

### Sign out

Use the `mgc logout` command to sign out.

```bash
mgc logout
```

## Next steps

- [Learn how to navigate the Microsoft Graph CLI](navigating.md)
- [Use app-only authentication with the Microsoft Graph CLI](app-only.md)

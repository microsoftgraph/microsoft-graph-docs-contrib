---
title: "Navigating the Microsoft Graph command-line interface (CLI)"
description: "The Microsoft Graph command-line interface contains a large number of commands. Learn how to find the right command for what you want to achieve."
ms.localizationpriority: medium
author: jasonjoh
---

# Navigating the Microsoft Graph command-line interface (CLI)

The Microsoft Graph API is huge, and it's growing all the time. Therefore, the number of commands in the Microsoft Graph command-line interface (CLI) is also large. Finding the right command for what you want to achieve can be challenging, especially if you're not already familiar with Microsoft Graph. This topic looks at some ways to help find a particular command.

[!INCLUDE [cli-preview](../../includes/cli-preview.md)]

[!INCLUDE [aad-advanced-queries-note](../../includes/aad-advanced-queries-note.md)]

## Command naming conventions

The commands in the CLI are generated directly from the [REST API](/graph/api/overview?view=graph-rest-1.0&preserve-view=true), so the names are influenced by the API. You don't have to understand the details of the API to use the Microsoft Graph CLI, but it helps to understand the naming convention.

The Microsoft Graph CLI commands represent resources in Microsoft Graph and the actions that can be taken on those resources. The general structure of the commands follow this pattern:

```bash
mgc <path-to-resource> <action>
```

The `<path-to-resource>` is one or more commands that follow the URL structure of the target API. The `<action>` is the final command in the sequence, and indicates the action to take on the target resource.

### Path to resource commands

The path to the target resource is constructed by sequencing one or more commands to represent the URL to the resource, as specified by the REST API. For a simple API like `GET /me`, a single command (`me`) is enough to represent the path.

Next, look at a more complex example: the [get message API](/graph/api/message-get?view=graph-rest-1.0&preserve-view=true). Look at the HTTP requests for this API. If you ignore the requests with `/me` in the URL, there are two other ways to call this API.

```http
GET /users/{id | userPrincipalName}/messages/{id}
GET /users/{id | userPrincipalName}/mailFolders/{id}/messages/{id}
```

The equivalent CLI commands map to the segments in the URLs. For example, the first URL's segments map to the following commands:

- `/users` maps to `users`
- `/{id | userPrincipalName}` maps to `--user-id` (more on this below)
- `/messages` maps to `messages`
- `/{id}` maps to `--message-id`

Putting that all together, the equivalent commands would be `users messages --user-id <user-id> --message-id <message-id>`.

#### Accessing an item in a collection

URL segments in an API that use a plural noun indicate a collection. When an API acts on a specific item in that collection, the URL will contain a segment with an ID. In the previous example, the segments `/users/{id | userPrincipalName}` combine to access a specific user in the collection of users. These "ID segments" are represented in the Microsoft Graph CLI by a required ID option, which is named like `--<name of resource>-id`. These options appear *after* the action command. Use the `--help` option to see required options for a given command.

### Action commands

For basic REST operations, the verb is determined by the HTTP method used for the API.

| HTTP method       | Command verb | Example |
|-------------------|--------------|---|
| GET (single item) | `get`        | `mgc me get` [API reference](/graph/api/user-get?view=graph-rest-1.0&preserve-view=true) |
| GET (collection)  | `list`       | `mgc users list` [API reference](/graph/api/user-list?view=graph-rest-1.0&preserve-view=true) |
| POST              | `create`     | `mgc me messages create` [API reference](/graph/api/user-post-messages?view=graph-rest-1.0&preserve-view=true) |
| PUT               | `put`        | `mgc drives items content put` [API reference](/graph/api/driveitem-put-content?view=graph-rest-1.0&preserve-view=true) |
| PATCH             | `patch`      | `mgc me events patch` [API reference](/graph/api/event-update?view=graph-rest-1.0&preserve-view=true) |
| DELETE            | `delete`     | `mgc drives items delete` [API reference](/graph/api/driveitem-delete?view=graph-rest-1.0&preserve-view=true) |

Consider the get message API example from the previous section. The path to the resource is represented by `users messages`, and the HTTP method for this API is GET, returning a single item. That means the resulting command for this API is `mgc users messages get --user-id <user-id> --message-id <message-id>`.

### Listing parameters

After you've found the right command, you can examine all the available parameters by using the `--help` option. For example, the following command lists all the available parameters for the `mgc users messages get` command.

```bash
mgc users messages get --help
```

## Finding available commands

Sometimes just knowing the naming conventions isn't enough to guess the right command. In this case, you can use the `--help` option iteratively to search the available commands in the CLI. For example, `mgc --help` returns the full list of available commands that are valid as the first command in the sequence. You can choose one of the available commands, then add it to the previous command to find the next level of commands.

### Example

```bash
$ mgc --help
Description:
  Microsoft Graph CLI

Usage:
  mgc [command] [options] [[--] <additional arguments>...]]

Options:
  -?, -h, --help  Show help and usage information
  --version       Show version information

Commands:
  admin
  agreement-acceptances
  agreements
  app-catalogs
  applications
  ...

$ mgc applications --help
Description:
  Provides operations to manage the collection of application entities.

Usage:
  mgc applications [command] [options]

Options:
  -?, -h, --help  Show help and usage information

Commands:
  add-key                             Provides operations to call the addKey method.
  add-password                        Provides operations to call the addPassword method.
  app-management-policies             Provides operations to manage the appManagementPolicies property of the
                                      microsoft.graph.application entity.
  check-member-groups                 Provides operations to call the checkMemberGroups method.
  ...
```

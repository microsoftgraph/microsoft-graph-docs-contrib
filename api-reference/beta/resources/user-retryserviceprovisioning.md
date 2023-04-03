---
title: "user: retryServiceProvisioning"
description: "Retries user service provisioning."
ms.localizationpriority: medium
author: "PaulEkirapa"
ms.prod: "user"
doc_type: "apiPageType"
---

# user: retryServiceProvisioning

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Retries [user](../resources/user.md) service provisioning.

## Permissions

One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

|Permission type      | Permissions (from least to most privileged)              |
|:--------------------|:---------------------------------------------------------|
|Delegated (work or school account) | User.ReadWrite, User.ManageIdentities.All, User.EnableDisableAccount.All, User.ReadWrite.All, Directory.ReadWrite.All    |
|Delegated (personal Microsoft account) | User.ReadWrite    |
|Application | User.ManageIdentities.All, User.EnableDisableAccount.All, User.ReadWrite.All, Directory.ReadWrite.All |

## HTTP request

```http
POST /users/{id}/retryServiceProvisioning
```

## Request headers

| Name           | Description                |
|:---------------|:---------------------------|
| Authorization  | Bearer {token}. Required.  |
| Content-Type   | application/json. Required.|


## Response

If successful, this method returns a `204 No Content` response code.

## Examples

### Example 1: Tetry user serviceProvisioning with userId

#### Request

The following is an example of the request.

```http
POST https://graph.microsoft.com/beta/users/{id}/retryServiceProvisioning
Content-type: application/json

HTTP/1.1 204 No Content
```

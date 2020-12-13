---
title: "Get bot"
description: "Read the properties and relationships of a teamworkBot object."
author: "AkJo"
localization_priority: Normal
ms.prod: "microsoft-teams"
doc_type: apiPageType
---

# Get bot
Namespace: microsoft.graph

Read the properties and relationships of a [teamworkBot](../resources/teamworkbot.md) object inside a [teamsAppDefinition](../resources/teamsappdefinition.md) resource.

## Permissions
One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

|Permission type|Permissions (from most to least privileged)|
|:---|:---|
|Delegated (work or school account)| AppCatalog.Submit, AppCatalog.Read.All, AppCatalog.ReadWrite.All |
|Delegated (personal Microsoft account)| Not supported. |
|Application| Not supported.|

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
GET /appCatalogs/teamsApps/{app-id}/appDefinitions/{app-definition-id}/bot
```

## Optional query parameters
This method supports the `$select` [OData query parameters](/graph/query-parameters) to help customize the response.

## Request headers
|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required.|

## Request body
Do not supply a request body for this method.

## Response

If successful, this method returns a `200 OK` response code and a [teamworkBot](../resources/teamworkbot.md) object in the response body.

## Examples

### Request
<!-- {
  "blockType": "request",
  "name": "get_teamworkbot"
}
-->
``` http
GET https://graph.microsoft.com/beta/appCatalogs/teamsApps/e4c5c249-bb4b-419e-b7c5-b1d98559368b/appDefinitions/ZTRjNWMyNDktYmI0Yi00MTllLWI3YzUtYjFkOTg1NTkzNjhiIyMyLjAuMSMjUHVibGlzaGVk/bot
```


### Response
**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.teamworkBot"
}
-->
``` http
HTTP/1.1 200 OK
Content-Type: application/json

{
  "@odata.type": "#microsoft.graph.teamworkBot",
  "id": "1f81bb29-bb29-1f81-29bb-811f29bb811f"
}
```

- [Bots installed in a team](team-list-installedapps.md)
- [Bots installed in a chat](chat-list-installedapps.md)
- [Bots installed in the personal scope of a user](userteamwork-list-installedapps.md)



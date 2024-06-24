---
title: "Update tab"
description: "Update the properties of the specified tab."
author: "nkramer"
ms.localizationpriority: medium
ms.subservice: "teams"
doc_type: apiPageType
---

# Update tab

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Update the properties of the specified [tab](../resources/teamstab.md).

This API can be used to configure the content of the tab.

> [!NOTE] 
> You can't use this API to update a static tab. An attempt to update a static tab returns a `400 Bad Request` response code.

[!INCLUDE [national-cloud-support](../../includes/global-us.md)]

## Permissions
Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

This API supports admin permissions. Global admins and Microsoft Teams service admins can access teams that they aren't a member of.

<!-- { "blockType": "permissions", "name": "channel_patch_tabs" } -->
[!INCLUDE [permissions-table](../includes/permissions/channel-patch-tabs-permissions.md)]

> [!NOTE]
> - The TeamsTab.ReadWrite.Group permission uses [resource-specific consent](/microsoftteams/platform/graph-api/rsc/resource-specific-consent).
> - The Group.ReadWrite.All and Directory.ReadWrite.All permissions are supported only for backward compatibility. We recommend that you update your solutions to use an alternative permission listed in the previous table and avoid using these permissions going forward.

## HTTP request
```http
PATCH /teams/{team-id}/channels/{channel-id}/tabs/{tab-id}
```

## Request headers
| Header       | Value |
|:---------------|:--------|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|
| Content-Type  | application/json  |

## Request body
In the request body, supply a JSON representation of [tab](../resources/teamstab.md) object.

## Response

If successful, this method returns a `200 OK` response code.

## Examples

### Request
The following example shows a request.
```http
PATCH https://graph.microsoft.com/beta/teams/{id}/channels/{id}/tabs/{id}
Content-type: application/json

{
  "displayName": "My Contoso Tab - updated"
}
```
### Response
The following example shows the response.
```http
HTTP/1.1 200 OK
Content-type: application/json

{
  "id": "tabId",
  "displayName": "My Contoso Tab - updated",
  "teamsAppId": "06805b9e-77e3-4b93-ac81-525eb87513b8",
  "configuration": {
    "entityId": "2DCA2E6C7A10415CAF6B8AB6661B3154",
    "contentUrl": "https://www.contoso.com/Orders/2DCA2E6C7A10415CAF6B8AB6661B3154/tabView",
    "websiteUrl": "https://www.contoso.com/Orders/2DCA2E6C7A10415CAF6B8AB6661B3154",
    "removeUrl": "https://www.contoso.com/Orders/2DCA2E6C7A10415CAF6B8AB6661B3154/uninstallTab"
  },
  "sortOrderIndex": "20",
  "webUrl": "https://teams.microsoft.com/l/channel/19%3ac2e36757ee744c569e70b385e6dd79b6%40thread.skype/tab%3a%3afd736d46-51ed-4c0b-9b23-e67ca354bb24?label=my%20%contoso%to%tab"
}
```

## See also

[Configuring the built-in tab types](/graph/teams-configuring-builtin-tabs)
[Microsoft Graph service-specific throttling limits](/graph/throttling-limits#microsoft-teams-service-limits)

<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
<!--
{
  "type": "#page.annotation",
  "description": "Update tab in channel",
  "keywords": "",
  "section": "documentation",
  "tocPath": "",
  "suppressions": []
}
-->



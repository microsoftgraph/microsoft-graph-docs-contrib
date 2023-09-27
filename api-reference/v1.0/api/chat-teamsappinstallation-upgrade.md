---
title: "teamsAppInstallation in chat: upgrade"
description: "Update an app installed in a chat and bring it in sync with the current version available in the tenant app catalog."
author: "subray"
ms.localizationpriority: high
ms.prod: "microsoft-teams"
doc_type: apiPageType
---

# teamsAppInstallation in chat: upgrade

Namespace: microsoft.graph

Upgrade an [app installation](../resources/teamsappinstallation.md) within a [chat](../resources/chat.md).

> **Notes**:
> - If the chat is associated with an [onlineMeeting](../resources/onlinemeeting.md) instance, then effectively, the **teamsApp** installed in the meeting will get upgraded.

[!INCLUDE [national-cloud-support](../../includes/all-clouds.md)]

## Permissions

One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

|Permission type      | Permissions (from least to most privileged)              |
|:--------------------|:---------------------------------------------------------|
|Delegated (work or school account) | TeamsAppInstallation.ReadWriteSelfForChat<sup>1</sup>, TeamsAppInstallation.ReadWriteForChat<sup>1</sup>, TeamsAppInstallation.ReadWriteAndConsentSelfForChat, TeamsAppInstallation.ReadWriteAndConsentForChat |
|Delegated (personal Microsoft account) | Not supported.   |
|Application |  TeamsAppInstallation.ReadWriteSelfForChat.All<sup>1</sup>, TeamsAppInstallation.ReadWriteForChat.All<sup>1</sup>, TeamsAppInstallation.ReadWriteAndConsentSelfForChat.All, TeamsAppInstallation.ReadWriteAndConsentForChat.All |

> **Notes:**
<br><sup>1</sup> These permissions cannot be used to install apps that require consent to resource-specific permissions.

## HTTP request
<!-- { "blockType": "ignored" } -->

```http
POST /chats/{chat-id}/installedApps/{app-installation-id}/upgrade
```

## Request body

In the request body, supply a JSON representation of the parameters.

The following table lists additional parameters that can be used with the upgrade action.

|Parameter|Type|Description|
|:---|:---|:---|
|consentedPermissionSet|[teamsAppPermissionSet](../resources/teamsapppermissionset.md)|The set of resource-specific permissions that are being consented to.|

> **Note**:
> The permissions consented to during the installation must match the resource-specific permissions defined in the [teamsAppDefinition](../resources/teamsAppDefinition.md) of the app. To get the application and delegated resource-specific permissions, see [Example 7](../api/appcatalogs-list-teamsapps.md#example-7-list-applications-with-a-given-id-and-return-only-the-resource-specific-permissions-required-by-the-app). If only delegated resource-specific permissions are specified in the **teamsAppDefinition**, permissions can be omitted in the request body.

## Response

If successful, this method returns a `204 No Content` response code.

## Examples

### Example 1: Upgrade the teams app installed in chat

#### Request

The following example upgrades an app installed in a chat.


<!-- {
  "blockType": "request",
  "name": "upgrade_installedApps_in_chat_v1_e1",
  "sampleKeys": ["19:ea28e88c00e94c7786b065394a61f296@thread.v2", "NjRiOWM3NDYtYjE1NS00MDQyLThkNDctOTQxYmQzODE2ODFiIyMwZDgyMGVjZC1kZWYyLTQyOTctYWRhZC03ODA1NmNkZTdjNzg="]
}-->

```http
POST https://graph.microsoft.com/v1.0/chats/19:ea28e88c00e94c7786b065394a61f296@thread.v2/installedApps/NjRiOWM3NDYtYjE1NS00MDQyLThkNDctOTQxYmQzODE2ODFiIyMwZDgyMGVjZC1kZWYyLTQyOTctYWRhZC03ODA1NmNkZTdjNzg=/upgrade

{

}
```

#### Response

<!-- {
  "blockType": "response",
  "truncated": true
}
-->

```http
HTTP/1.1 204 No Content
```

### Example 2: Upgrade app installed in a chat and consent to the resource specific permissions

To get the list of resource-specific permissions required by the app, get the app from **appCatalog**, as shown in [Example 7](../api/appcatalogs-list-teamsapps.md#example-7-list-applications-with-a-given-id-and-return-only-the-resource-specific-permissions-required-by-the-app).

#### Request

<!-- {
  "blockType": "request",
  "name": "upgrade_installedApps_in_chat_v1_e2",
  "sampleKeys": ["19:ea28e88c00e94c7786b065394a61f296@thread.v2", "NjRiOWM3NDYtYjE1NS00MDQyLThkNDctOTQxYmQzODE2ODFiIyMwZDgyMGVjZC1kZWYyLTQyOTctYWRhZC03ODA1NmNkZTdjNzg="]
}-->

```http
POST https://graph.microsoft.com/v1.0/chats/19:ea28e88c00e94c7786b065394a61f296@thread.v2/installedApps/NjRiOWM3NDYtYjE1NS00MDQyLThkNDctOTQxYmQzODE2ODFiIyMwZDgyMGVjZC1kZWYyLTQyOTctYWRhZC03ODA1NmNkZTdjNzg=/upgrade
Content-Type: application/json

{
  "consentedPermissionSet": {
      "resourceSpecificPermissions": [
      {
        "permissionValue": "OnlineMeeting.ReadBasic.Chat",
        "permissionType": "Delegated"
      },
      {
        "permissionValue": "ChatMember.Read.Chat",
        "permissionType": "Application"
      }]
    }
}
```

---

#### Response

<!-- {
  "blockType": "response"
} -->

```http
HTTP/1.1 204 No Content
```

## See also

- [List apps in catalog](appcatalogs-list-teamsapps.md)
- [Request resource-specific consent for apps](/microsoftteams/platform/graph-api/rsc/resource-specific-consent)

<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "Chat update installedapps",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->

---
title: "Get change notifications for app installation"
description: "Learn how to get notifications for Teams app installation using Microsoft Graph APIs."
author: "v-sdhakshina"
ms.localizationpriority: high
ms.subservice: "teams"
ms.custom: scenarios:getting-started
ms.date: 11/07/2024
ms.topic: how-to
---

# Get change notifications for app installation

Change notifications for [Teams app installations](/graph/api/resources/teamsappinstallation) allow you to subscribe to particular changes (create, update, and delete) on a Teams app. You can get notified whenever the specified Teams app is installed, updated, or deleted from a team, groupChat, or a user's personal scope. 

More information on each scope and receiving notifications from each scope is provided later in this document.

> [!NOTE]
> If you request a subscription **expirationDateTime** that is more than 1 hour in the future, you must subscribe to lifecycle notifications by including a **lifecycleNotificationUrl** property in your subscription request. Otherwise, your subscription request will fail with the following error message: *lifecycleNotificationUrl is a required property for subscription creation on this resource when the expirationDateTime value is set to greater than 1 hour*.

## Subscribe to Teams app installations

To get change notifications for Teams app installations, subscribe to `/appCatalogs/teamsApps/{teams-app-id}/installations`.

### Permissions

Permissions are required to receive notifications, and the permissions required depend on the scope of the subscription. For more information on available permissions, see [Permissions](/graph/permissions-reference).

#### Personal scope

`Personal` scope subscriptions allow you to receive change notifications for Teams apps installed or to be installed within any user. `Personal` scope subscriptions are created by subscribing to `/appCatalogs/teamsApps/{teams-app-id}/installations?$filter=(scopeInfo/scope eq 'personal')` with atleast one of the following permissions:

| Permission type                        | Least privileged permissions | Higher privileged permissions |
|:---------------------------------------|:--------------------------------------------|:--------------------------------------------|
| Delegated (work or school account)     | Not supported.                              | Not supported.                              |
| Delegated (personal Microsoft account) | Not supported.                              | Not supported.                              |
| Application                            |  Not supported.                              |TeamsAppInstallation.ReadForUser.All, TeamsAppInstallation.ReadWriteSelfForUser.All, TeamsAppInstallation.ReadWriteForUser.All, TeamsAppInstallation.ReadWriteAndConsentSelfForUser.All, TeamsAppInstallation.ReadWriteAndConsentForUser.All, TeamsAppInstallation.Read.All|

#### Team scope

`Team` scope subscriptions refer to getting change notifications for Teams apps installed or to be installed within any team. `Team` scope subscriptions are created by subscribing to `/appCatalogs/teamsApps/{teams-app-id}/installations?$filter=(scopeInfo/scope eq 'team')` with atleast one of the following permissions:

| Permission type                        | Least privileged permissions | Higher privileged permissions |
|:---------------------------------------|:--------------------------------------------|:--------------------------------------------|
| Delegated (work or school account)     | Not supported.                              | Not supported.                              |
| Delegated (personal Microsoft account) | Not supported.                              | Not supported.                              |
| Application                            |  Not supported.                              |TeamsAppInstallation.ReadForTeam.All, TeamsAppInstallation.ReadWriteSelfForTeam.All, TeamsAppInstallation.ReadWriteForTeam.All, TeamsAppInstallation.ReadWriteAndConsentSelfForTeam.All, TeamsAppInstallation.ReadWriteAndConsentForTeam.All, TeamsAppInstallation.Read.All|

#### Chat scope

`Chat` scope subscriptions refer to getting change notifications for Teams apps installed or to be installed within any chat. `Chat` scope subscriptions are created by subscribing to `/appCatalogs/teamsApps/{teams-app-id}/installations?$filter=(scopeInfo/scope eq 'groupChat')` with atleast one of the following permissions:

| Permission type                        | Least privileged permissions | Higher privileged permissions |
|:---------------------------------------|:--------------------------------------------|:--------------------------------------------|
| Delegated (work or school account)     | Not supported.                              | Not supported.                              |
| Delegated (personal Microsoft account) | Not supported.                              | Not supported.                              |
| Application                            |  Not supported.                              |TeamsAppInstallation.ReadForChat.All, TeamsAppInstallation.ReadWriteSelfForChat.All, TeamsAppInstallation.ReadWriteForChat.All, TeamsAppInstallation.ReadWriteAndConsentSelfForChat.All, TeamsAppInstallation.ReadWriteAndConsentForChat.All, TeamsAppInstallation.Read.All|

> [!NOTE]
> Notifications for update events that occur in the chat scope might not be delivered. This is a [known issue](https://developer.microsoft.com/graph/known-issues/?search=26483).

#### All scopes

`All` scope subscriptions refer to getting change notifications for Teams apps installed or to be installed within any chat, team or user. `All` scope subscriptions are created by subscribing to `/appCatalogs/teamsApps/{teams-app-id}/installations` with atleast one of the following permissions:


| Permission type                        | Least privileged permissions | Higher privileged permissions |
|:---------------------------------------|:--------------------------------------------|:--------------------------------------------|
| Delegated (work or school account)     | Not supported.                              | Not supported.                              |
| Delegated (personal Microsoft account) | Not supported.                              | Not supported.                              |
| Application                            | Not supported.                              |TeamsAppInstallation.Read.All|

#### RSC permissions

You can also create subscriptions using resource-specific consent (RSC) permissions. For more information on the available RSC permissions, see [RSC permissions](/graph/permissions-reference#resource-specific-consent-rsc-permissions).

> [!NOTE]
> If you use RSC permissions, deletion events that occur in personal, team, and chat scopes will not be delivered.

The following are the supported RSC permissions with one permission for each scope:

* `TeamsAppInstallation.Read.User` permission is required to receive events in personal scope.
* `TeamsAppInstallation.Read.Group` permission is required to receive events in team scope.
* `TeamsAppInstallation.Read.Chat` permission is required to receive events in chat scope.

To subscribe using RSC permissions, append query parameter `useResourceSpecificConsentBasedAuthorization` to the subscription resource. Unless otherwise specified, the default value for this query parameter is `false`. You can use this parameter either alongside the `$filter` query parameter or on its own.

> [!NOTE]
> If RSC permissions are in use, application permissions aren't required.

### Examples

The following example shows how to subscribe for Teams app installation notifications in all scopes:

```json
POST https://graph.microsoft.com/v1.0/subscriptions
Content-Type: application/json
{
"changeType": "created,updated,deleted",
"resource": "/appCatalogs/teamsApps/19d56a5e-86a2-489b-aa5c-88a60f92b83e/installations,
"notificationUrl": "https://webhook.azurewebsites.net/api/resourceNotifications",
"includeResourceData": true,
"encryptionCertificate": "{base64encodedCertificate}",
"encryptionCertificateId": "{customId}",
"expirationDateTime": "2023-11-16T11:00:00.0000000Z",
"clientState": "{secretClientState}"
}
```

To subscribe for a specific scope, you must declare the scope `$filter` query parameter while you create the subscription. You can do this by adding it to the subscription resource:

```json
POST https://graph.microsoft.com/v1.0/subscriptions
Content-Type: application/json 
{ 
  "changeType": "created,updated,deleted", 
  "resource": "/appCatalogs/teamsApps/19d56a5e-86a2-489b-aa5c-88a60f92b83e/installations?$filter= (scopeInfo/scope eq 'groupChat') ", 
  "notificationUrl": "https://webhook.azurewebsites.net/api/resourceNotifications", 
  "includeResourceData": true, 
  "encryptionCertificate": "{base64encodedCertificate}", 
  "encryptionCertificateId": "{customId}", 
  "expirationDateTime": "2023-11-16T11:00:00.0000000Z", 
  "clientState": "{secretClientState}" 
} 
```

> [!NOTE]
> Ensure that the permissions you need to provide vary based on the scope. For example, when the subscription resource is configured for `groupChat`, it is mandatory to have at least one permission from the chat scope.

To subscribe for multiple scopes, you must declare the scopes with the `$filter` query parameter while you create the subscription:

```json
POST https://graph.microsoft.com/v1.0/subscriptions
Content-Type: application/json 
{ 
  "changeType": "created,updated,deleted", 
  "resource": "/appCatalogs/teamsApps/19d56a5e-86a2-489b-aa5c-88a60f92b83e/installations?$filter= (scopeInfo/scope eq 'personal') or (scopeInfo/scope eq 'team')", 
  "notificationUrl": "https://webhook.azurewebsites.net/api/resourceNotifications", 
  "includeResourceData": true, 
  "encryptionCertificate": "{base64encodedCertificate}", 
  "encryptionCertificateId": "{customId}", 
  "expirationDateTime": "2023-11-16T11:00:00.0000000Z", 
  "clientState": "{secretClientState}" 
} 
```

> [!NOTE]
> Ensure that the permissions you need to provide vary based on the scope. For example, when the subscription resource is configured for both `personal` and `team` scopes, it is mandatory to have at least one permission from each scope.

**To create a subscription using RSC with the `$filter` parameter:**

```json
POST https://graph.microsoft.com/v1.0/subscriptions
Content-Type: application/json 
{ 
  "changeType": "created,updated,deleted", 
  "resource": "/appCatalogs/teamsApps/19d56a5e-86a2-489b-aa5c-88a60f92b83e/installations?$filter= (scopeInfo/scope eq 'personal')&useResourceSpecificConsentBasedAuthorization=true", 
  "notificationUrl": "https://webhook.azurewebsites.net/api/resourceNotifications", 
  "includeResourceData": true, 
  "encryptionCertificate": "{base64encodedCertificate}", 
  "encryptionCertificateId": "{customId}", 
  "expirationDateTime": "2023-11-16T11:00:00.0000000Z", 
  "clientState": "{secretClientState}" 
} 
```

> [!NOTE]
> Notifications are delivered only for the events that occur after the relevant RSC permission is granted and only for the resource where RSC has been granted. For example, if RSC permission is granted for user A but not for user B, the notifications are sent only for the Teams app installation events within user A's personal scope.

**To create a subscription using RSC without the `$filter` parameter:**

```json
POST https://graph.microsoft.com/v1.0/subscriptions
Content-Type: application/json 
{ 
  "changeType": "created,updated,deleted", 
  "resource": "/appCatalogs/teamsApps/19d56a5e-86a2-489b-aa5c-88a60f92b83e/installations?useResourceSpecificConsentBasedAuthorization=true", 
  "notificationUrl": "https://webhook.azurewebsites.net/api/resourceNotifications", 
  "includeResourceData": true, 
  "encryptionCertificate": "{base64encodedCertificate}", 
  "encryptionCertificateId": "{customId}", 
  "expirationDateTime": "2023-11-16T11:00:00.0000000Z", 
  "clientState": "{secretClientState}" 
} 
```

> [!NOTE]
> Notifications are delivered only for the events that occur after the relevant RSC permission is granted and only for the resource where RSC has been granted.

### Notifications with resource data

The following example shows a payload of notifications with resource data.

```json
{
    "value": [{ 
        "subscriptionId": "7ac50e0f-4526-44bc-8e75-834c16143e5d", 
        "changeType": "created", 
        "clientState": "{SpecifiedClientState}", 
        "subscriptionExpirationDateTime": "2023-11-16T11:00:00.0000000Z", 
        "resource": "appCatalogs/teamsApps('19d56a5e-86a2-489b-aa5c-88a60f92b83e')/installations('N2VlYjVhOTUtZjYwMi00ODYxLWFiNjctNDk3MTRmYTVhMDIwIyMxYzI1NmE2NS04M2E2LTRiNWMtOWNjZi03OGY4YWZiNmYxZTg=')", 
        "resourceData": { 
            "id": "N2VlYjVhOTUtZjYwMi00ODYxLWFiNjctNDk3MTRmYTVhMDIwIyMxYzI1NmE2NS04M2E2LTRiNWMtOWNjZi03OGY4YWZiNmYxZTg=", 
            "@odata.type": "#Microsoft.Graph.teamsAppInstallation", 
            "@odata.id": "appCatalogs/teamsApps('19d56a5e-86a2-489b-aa5c-88a60f92b83e')/installations('N2VlYjVhOTUtZjYwMi00ODYxLWFiNjctNDk3MTRmYTVhMDIwIyMxYzI1NmE2NS04M2E2LTRiNWMtOWNjZi03OGY4YWZiNmYxZTg=')" 
        }, 
        "encryptedContent": { 
            "data": "{EncryptedContent}", 
            "dataKey": "{EnryptedDataKeyUsedForEncryptingContent}", 
            "encryptionCertificateId": "{IdOfTheCertificateUsedForEncryptingDataKey}", 
            "encryptionCertificateThumbprint": "{ThumbprintOfTheCertificateUsedForEncryptingDataKey}" 
        }, 
        "tenantId": "{TenantForWhichNotificationWasSent}" 
    }], 
    "validationTokens": ["{ValidationTokens}"] 
}
```

The following example shows a payload of the decrypted notification. The payload adheres to the [teamsAppInstallation](/graph/api/resources/teamsappinstallation) schema.

```json
{
"id":"N2VlYjVhOTUtZjYwMi00ODYxLWFiNjctNDk3MTRmYTVhMDIwIyMxYzI1NmE2NS04M2E2LTRiNWMtOWNjZi03OGY4YWZiNmYxZTg=", 
"teamsApp":{ 
"id":"95eae4f6-3fcc-429b-9a30-daf93f8f0bb4" 
}, 
"scopeInfo":{ 
"@odata.type":"#microsoft.graph.groupChatTeamsAppInstallationScopeInfo", 
"chatId":"19:49dec384fef2435a92829852608d52c3@thread.v2", 
"scope":"groupChat" 
} 
}
```

## See also

[Microsoft Graph change notifications](change-notifications-overview.md)

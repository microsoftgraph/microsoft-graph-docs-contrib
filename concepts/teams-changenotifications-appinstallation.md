---
title: "Get change notifications for app installation using Microsoft Graph"
description: "Learn how to get notifications for app installation using Microsoft Graph APIs."
author: "v-sdhakshina"
ms.localizationpriority: high
ms.subservice: "teams"
ms.custom: scenarios:getting-started
---

# Get change notifications for app installation using Microsoft Graph

Change notifications allow you to subscribe to changes (create, update, and delete) to Teams app installations. You can get notified whenever the Teams app is installed, upgraded, or deleted from a team, chat, or personal scope. For more information, see [teamsAppInstallation](/graph/api/resources/teamsappinstallation).

Continue with this article about scenarios for Teams app installation resources in **personal**, **team**, or **chat** scope. Or, find out about [change notifications for other Microsoft Teams resources](teams-change-notification-in-microsoft-teams-overview.md).

> [!NOTE]
> If you request a subscription **expirationDateTime** that is more than 1 hour in the future, you must subscribe to lifecycle notifications by including a **lifecycleNotificationUrl** property in your subscription request. Otherwise, your subscription request will fail with the following error message: *lifecycleNotificationUrl is a required property for subscription creation on this resource when the expirationDateTime value is set to greater than 1 hour*.

## Subscribe to Teams app installations

To get change notifications for Teams app installations, subscribe to `/appCatalogs/teamsApps/{teams-app-id}/installations`.

### Permissions

To subscribe to Teams apps installation, you can use the specified scope such as personal, team, and chat or all scopes along with the corresponding permissions. For more information on how to choose permissions, see [Permissions](/graph/permissions-reference).

#### Personal scope

To get change notifications for Teams app installation in personal scope, subscribe to `/appCatalogs/teamsApps/{teams-app-id}/installations?$filter=(scopeInfo/scope eq 'personal')` with one of the following permissions:

| Permission type                        | Permissions (from least to most privileged) |
|:---------------------------------------|:--------------------------------------------|
| Delegated (work or school account)     | Not supported.                              |
| Delegated (personal Microsoft account) | Not supported.                              |
| Application                            | TeamsAppInstallation.ReadForUser.All, TeamsAppInstallation.ReadWriteSelfForUser.All, TeamsAppInstallation.ReadWriteForUser.All, TeamsAppInstallation.ReadWriteAndConsentSelfForUser.All, TeamsAppInstallation.ReadWriteAndConsentForUser.All, TeamsAppInstallation.Read.All|

#### Team scope

To get change notifications for Teams app installation in team scope, subscribe to `/appCatalogs/teamsApps/{teams-app-id}/installations?$filter=(scopeInfo/scope eq 'team')` with one of the following permissions:

| Permission type                        | Permissions (from least to most privileged) |
|:---------------------------------------|:--------------------------------------------|
| Delegated (work or school account)     | Not supported.                              |
| Delegated (personal Microsoft account) | Not supported.                              |
| Application                            | TeamsAppInstallation.ReadForTeam.All, TeamsAppInstallation.ReadWriteSelfForTeam.All, TeamsAppInstallation.ReadWriteForTeam.All, TeamsAppInstallation.ReadWriteAndConsentSelfForTeam.All, TeamsAppInstallation.ReadWriteAndConsentForTeam.All, TeamsAppInstallation.Read.All|

#### Chat scope

To get change notifications for Teams app installation in chat scope, subscribe to `/appCatalogs/teamsApps/{teams-app-id}/installations?$filter=(scopeInfo/scope eq 'groupChat')` with one of the following permissions:

| Permission type                        | Permissions (from least to most privileged) |
|:---------------------------------------|:--------------------------------------------|
| Delegated (work or school account)     | Not supported.                              |
| Delegated (personal Microsoft account) | Not supported.                              |
| Application                            | TeamsAppInstallation.ReadForChat.All, TeamsAppInstallation.ReadWriteSelfForChat.All, TeamsAppInstallation.ReadWriteForChat.All, TeamsAppInstallation.ReadWriteAndConsentSelfForChat.All, TeamsAppInstallation.ReadWriteAndConsentForChat.All, TeamsAppInstallation.Read.All|

#### All scopes

To get change notifications for Teams app installation in all scope, subscribe to `/appCatalogs/teamsApps/{teams-app-id}/installations` with one of the following permissions:

| Permission type                        | Permissions (from least to most privileged) |
|:---------------------------------------|:--------------------------------------------|
| Delegated (work or school account)     | Not supported.                              |
| Delegated (personal Microsoft account) | Not supported.                              |
| Application                            | TeamsAppInstallation.Read.All |

#### RSC permissions

To subscribe to Teams apps installation, you can also use resource-specific consent (RSC) permissions. For more information on the available RSC permissions, see [RSC permissions](/graph/permissions-reference#resource-specific-consent-rsc-permissions).

> [!NOTE]
> You can use RSC permissions to receive notifications for Teams app installations being created and upgraded in team, chat, or personal scope. Currently, the use of RSC permissions doesn’t support the delivery of Teams app installation deletion events.

The following are the supported RSC permissions with one permission for each scope:

* `TeamsAppInstallation.Read.User` permission is required to receive events in personal scope.
* `TeamsAppInstallation.Read.Group` permission is required to receive events in team scope.
* `TeamsAppInstallation.Read.Chat` permission is required to receive events in chat scope.

To subscribe using RSC permissions, append query parameter `useResourceSpecificConsentBasedAuthorization` to the subscription resource. Unless otherwise specified, the default value for this query parameter is `false`. You can use this parameter either alongside the `$filter` query parameter or on its own.

> [!NOTE]
> If RSC permissions are in use, application permissions aren't required.

### Examples

The following example shows how to subscribe for Teams app installation notifications in all scopes:

```http
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

```http
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

```http
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
> Notifications will be delivered only for the events that occur after the relevant RSC permission is granted and only for the resource where RSC has been granted. For example, if RSC permission is granted for user A but not for user B, the notifications are sent only for the Teams app installation events within user A's personal scope.

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
> Notifications will be delivered only for the events that occur after the relevant RSC permission is granted and only for the resource where RSC has been granted.

### Notifications with resource data

The following is the payload for notifications with resource data:

```json
{
    "value": [{ 
        "subscriptionId": "7ac50e0f-4526-44bc-8e75-834c16143e5d", 
        "changeType": "created", 
        "clientState": "<<--SpecifiedClientState-->>", 
        "subscriptionExpirationDateTime": "2023-11-16T11:00:00.0000000Z", 
        "resource": "appCatalogs/teamsApps('19d56a5e-86a2-489b-aa5c-88a60f92b83e')/installations('N2VlYjVhOTUtZjYwMi00ODYxLWFiNjctNDk3MTRmYTVhMDIwIyMxYzI1NmE2NS04M2E2LTRiNWMtOWNjZi03OGY4YWZiNmYxZTg=')", 
        "resourceData": { 
            "id": "N2VlYjVhOTUtZjYwMi00ODYxLWFiNjctNDk3MTRmYTVhMDIwIyMxYzI1NmE2NS04M2E2LTRiNWMtOWNjZi03OGY4YWZiNmYxZTg=", 
            "@odata.type": "#Microsoft.Graph.teamsAppInstallation", 
            "@odata.id": "appCatalogs/teamsApps('19d56a5e-86a2-489b-aa5c-88a60f92b83e')/installations('N2VlYjVhOTUtZjYwMi00ODYxLWFiNjctNDk3MTRmYTVhMDIwIyMxYzI1NmE2NS04M2E2LTRiNWMtOWNjZi03OGY4YWZiNmYxZTg=')" 
        }, 
        "encryptedContent": { 
            "data": "<<--EncryptedContent-->", 
            "dataKey": "<<--EnryptedDataKeyUsedForEncryptingContent-->>", 
            "encryptionCertificateId": "<<--IdOfTheCertificateUsedForEncryptingDataKey-->>", 
            "encryptionCertificateThumbprint": "<<--ThumbprintOfTheCertificateUsedForEncryptingDataKey-->>" 
        }, 
        "tenantId": "<<--TenantForWhichNotificationWasSent-->>" 
    }], 
    "validationTokens": ["<<--ValidationTokens-->>"] 
}
```

The following is the decrypted notification payload. The payload adheres to the [teamsAppInstallation](/graph/api/resources/teamsappinstallation) schema.

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

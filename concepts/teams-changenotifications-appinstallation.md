---
title: "Get change notifications for Teams app installations"
description: "Learn how to get change notifications for Teams app installations by using Microsoft Graph APIs."
author: "v-sdhakshina"
ms.localizationpriority: high
ms.subservice: "teams"
ms.custom: scenarios:getting-started
---

# Get change notifications for Teams app installations

Change notifications for [Teams app installations](/graph/api/resources/teamsappinstallation) allow you to subscribe to particular changes (create, update, and delete) on a Teams app. You can get notified whenever the specified Teams app is installed, updated, or deleted from a [team, chat, or personal scope](/microsoftteams/platform/concepts/design/understand-use-cases#app-scope).

This article describes how to subscribe to change notifications for Teams apps in personal, team, or chat scopes by using Microsoft Graph APIs.

> [!NOTE]
> If you request a subscription **expirationDateTime** that is more than 1 hour in the future, you must subscribe to lifecycle notifications by including a **lifecycleNotificationUrl** property in your subscription request. Otherwise, your subscription request will fail with the following error message: "lifecycleNotificationUrl is a required property for subscription creation on this resource when the expirationDateTime value is set to greater than 1 hour."

## Subscribe to Teams app installations

To get change notifications for Teams app installations, subscribe to `/appCatalogs/teamsApps/{teams-app-id}/installations`.

## Permissions

Permissions are required to receive notifications, and the permissions required depend on the scope of the subscription. For more information, see [Permissions reference](/graph/permissions-reference).

### Personal scope

To get change notifications for Teams app installations in personal scope, subscribe to `/appCatalogs/teamsApps/{teams-app-id}/installations?$filter=(scopeInfo/scope eq 'personal')` with one of the following permissions.

| Permission type                        | Permissions (from least to most privileged) |
|:---------------------------------------|:--------------------------------------------|
| Delegated (work or school account)     | Not supported.                              |
| Delegated (personal Microsoft account) | Not supported.                              |
| Application                            | TeamsAppInstallation.ReadForUser.All, TeamsAppInstallation.ReadWriteSelfForUser.All, TeamsAppInstallation.ReadWriteForUser.All, TeamsAppInstallation.ReadWriteAndConsentSelfForUser.All, TeamsAppInstallation.ReadWriteAndConsentForUser.All, TeamsAppInstallation.Read.All|

### Team scope

To get change notifications for Teams app installations in team scope, subscribe to `/appCatalogs/teamsApps/{teams-app-id}/installations?$filter=(scopeInfo/scope eq 'team')` with one of the following permissions.

| Permission type                        | Permissions (from least to most privileged) |
|:---------------------------------------|:--------------------------------------------|
| Delegated (work or school account)     | Not supported.                              |
| Delegated (personal Microsoft account) | Not supported.                              |
| Application                            | TeamsAppInstallation.ReadForTeam.All, TeamsAppInstallation.ReadWriteSelfForTeam.All, TeamsAppInstallation.ReadWriteForTeam.All, TeamsAppInstallation.ReadWriteAndConsentSelfForTeam.All, TeamsAppInstallation.ReadWriteAndConsentForTeam.All, TeamsAppInstallation.Read.All|

### Chat scope

To get change notifications for Teams app installations in chat scope, subscribe to `/appCatalogs/teamsApps/{teams-app-id}/installations?$filter=(scopeInfo/scope eq 'groupChat')` with one of the following permissions.

| Permission type                        | Permissions (from least to most privileged) |
|:---------------------------------------|:--------------------------------------------|
| Delegated (work or school account)     | Not supported.                              |
| Delegated (personal Microsoft account) | Not supported.                              |
| Application                            | TeamsAppInstallation.ReadForChat.All, TeamsAppInstallation.ReadWriteSelfForChat.All, TeamsAppInstallation.ReadWriteForChat.All, TeamsAppInstallation.ReadWriteAndConsentSelfForChat.All, TeamsAppInstallation.ReadWriteAndConsentForChat.All, TeamsAppInstallation.Read.All|

> [!NOTE]
> Notifications for update events that occur in the chat scope might not be delivered. This is a known limitation.

### All scopes

To get change notifications for Teams app installations in all scopes, subscribe to `/appCatalogs/teamsApps/{teams-app-id}/installations` with one of the following permissions.

| Permission type                        | Permissions (from least to most privileged) |
|:---------------------------------------|:--------------------------------------------|
| Delegated (work or school account)     | Not supported.                              |
| Delegated (personal Microsoft account) | Not supported.                              |
| Application                            | TeamsAppInstallation.Read.All |

### RSC permissions

You can also create subscriptions using resource-specific consent (RSC) permissions. For more information, see [RSC permissions](/graph/permissions-reference#resource-specific-consent-rsc-permissions).

> [!NOTE]
> If you use RSC permissions, deletion events that occur in personal, team, and chat scopes will not be delivered.

The following are the supported RSC permissions:

* `TeamsAppInstallation.Read.User` is required to receive events in personal scope.
* `TeamsAppInstallation.Read.Group` is required to receive events in team scope.
* `TeamsAppInstallation.Read.Chat` is required to receive events in chat scope.

To subscribe using RSC permissions, append the `useResourceSpecificConsentBasedAuthorization` query parameter to the subscription resource. Unless otherwise specified, the default value for this query parameter is `false`. You can use this parameter with the `$filter` query parameter or on its own.

> [!NOTE]
> If you use RSC permissions, application permissions aren't required.

## Examples

The following example shows how to subscribe to Teams app installation notifications in all scopes.

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

To subscribe for a specific scope, you must declare the scope `$filter` query parameter when you create the subscription. You can do this by adding it to the subscription resource, as shown.

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
> Make sure that the permissions you need to provide vary based on the scope. For example, when the subscription resource is configured for `groupChat`, you must have at least one permission from the chat scope.

To subscribe for multiple scopes, you must declare the scopes with the `$filter` query parameter when you create the subscription, as shown.

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
> Make sure that the permissions you need to provide vary based on the scope. For example, when the subscription resource is configured for both personal and team scopes, you must have at least one permission from each scope.

The following example shows how to create a subscription using RSC permissions with the `$filter` parameter.

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

The following example shows how to create a subscription using RSC without the `$filter` parameter.

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

## Notifications with resource data

The following example shows a payload of notifications with resource data.

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

## Related content

- [Change notifications for Microsoft Teams resources](/graph/teams-change-notification-in-microsoft-teams-overview)
- [Microsoft Graph change notifications](/graph/change-notifications-overview)

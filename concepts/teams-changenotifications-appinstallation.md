---
title: "Get change notifications for app installation using Microsoft Graph"
description: "Learn how to get notifications for app installation using Microsoft Graph APIs."
author: "v-sdhakshina"
ms.localizationpriority: high
ms.subservice: "teams"
ms.custom: scenarios:getting-started
---

# Get change notifications for app installation using Microsoft Graph

Change notifications allow you to subscribe to teams app related events such as installation, upgrade, and uninstallation. You can get notified whenever the Teams app is installed, upgraded or deleted from a team, chat or user.

If a customer needs any additional information, they can use Teams app ID and app installation ID returned in the notification payload to fetch the necessary information separately.

## Subscribe to Teams app installation

To get change notifications for app installation in Teams, subscribe to `/appCatalogs/teamsApps/{teams-app-id}/installations`.

### Permissions

You can use one of the following permissions  . To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

#### User scope

If the subscription is being made in User scope which is represented by `/appCatalogs/teamsApps/{teams-app-id}/installations?$filter=(scopeInfo/scope eq 'personal')`, one of the following permission is required:

| Permission type                        | Permissions (from least to most privileged) |
|:---------------------------------------|:--------------------------------------------|
| Delegated (work or school account)     | Not supported.                              |
| Delegated (personal Microsoft account) | Not supported.                              |
| Application                            | TeamsAppInstallation.ReadForUser.All, TeamsAppInstallation.ReadWriteForUser.All, TeamsAppInstallation.ReadWriteAndConsentForUser.All, TeamsAppInstallation.ReadWriteSelfForUser.All, TeamsAppInstallation.Read.User* |

#### Team scope

If the subscription is being made in Team scope which is represented by `/appCatalogs/teamsApps/{teams-app-id}/installations?$filter=(scopeInfo/scope eq 'team')`, one of the following permission is required:

| Permission type                        | Permissions (from least to most privileged) |
|:---------------------------------------|:--------------------------------------------|
| Delegated (work or school account)     | Not supported.                              |
| Delegated (personal Microsoft account) | Not supported.                              |
| Application                            | TeamsAppInstallation.ReadForTeam.All, TeamsAppInstallation.ReadWriteForTeam.All, TeamsAppInstallation.ReadWriteAndConsentForTeam.All, TeamsAppInstallation.ReadWriteSelfForTeam.All, TeamsAppInstallation.ReadWriteAndConsentSelfForTeam.All, TeamsAppInstallation.Read.Team* |

#### Chat scope

If the subscription is being made in Chat scope which is represented by `/appCatalogs/teamsApps/{teams-app-id}/installations?$filter=(scopeInfo/scope eq 'groupChat')`, one of the following permission is required:

| Permission type                        | Permissions (from least to most privileged) |
|:---------------------------------------|:--------------------------------------------|
| Delegated (work or school account)     | Not supported.                              |
| Delegated (personal Microsoft account) | Not supported.                              |
| Application                            | TeamsAppInstallation.ReadForChat.All, TeamsAppInstallation.ReadWriteForChat.All, TeamsAppInstallation.ReadWriteAndConsentForChat.All, TeamsAppInstallation.ReadWriteSelfForChat.All, TeamsAppInstallation.ReadWriteAndConsentSelfForChat.All, TeamsAppInstallation.Read.Chat* |

#### All scopes

If the subscription is being made in all scopes which is represented by `/appCatalogs/teamsApps/{teams-app-id}/installations`, then one of the following permission is required:

| Permission type                        | Permissions (from least to most privileged) |
|:---------------------------------------|:--------------------------------------------|
| Delegated (work or school account)     | Not supported.                              |
| Delegated (personal Microsoft account) | Not supported.                              |
| Application                            | TeamsAppInstallation.Read.All, TeamsAppInstallation.ReadSelected.All |

If the subscription is being made to 2 scopes such as team and chat, it is represented by `/appCatalogs/teamsApps/{teams-app-id}/installations?$filter= (scopeInfo/scope eq 'groupChat') or (scopeInfo/scope eq 'team')`. They would then need at-least one of the permissions from team and chat tables shown previously.

### Examples

The following example shows how to subscribe for Teams App Installation notifications in all scopes:

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

If a subscription in a particular scope is desired, you must declare the scope `$filter` query parameter while you create the subscription. You can do this by adding it to the subscription resource:

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

Ensure that the permissions you need to provide vary based on the scope. In the given example, a subscription was set up for both users and teams, so at least one permission for each scope is necessary. For further details, please refer to the permissions table.

For apps that utilize resource-specific consent (RSC) permissions, you must declare `useResourceSpecificConsentBasedAuthorization=true` query parameter while you create subscription by adding it to the subscription resource:

```http
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

The supported RSC permissions are `TeamsAppInstallation.Read.Chat`, `TeamsAppInstallation.Read.Group`, and `TeamsAppInstallation.Read.User`.

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
"id":"MTk6NDlkZWMzODRmZWYyNDM1YTkyODI5ODUyNjA4ZDUyYzNAdGhyZWFkLnYyIyM5NWVhZTRmNi0zZmNjLTQyOWItOWEzMC1kYWY5M2Y4ZjBiYjQ=", 
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

---
title: "Manage security alerts for Azure AD roles using PIM"
description: "Learn how to manage security alerts for Azure AD roles using PIM."
author: FaithOmbongi
ms.reviewer: rianakarim
ms.localizationpriority: medium
ms.topic: how-to
ms.prod: "governance"
ms.date: 09/27/2023
---

# Manage security alerts for Azure AD roles using PIM

Privileged Identity Management (PIM) for Azure AD roles generates alerts when it detects suspicious or unsafe settings for Azure AD roles in your tenant. This article describes scenarios for managing PIM alerts using Microsoft Graph.

For more information about API resources for managing PIM security alerts, see [Security alerts for Azure AD roles](/graph/api/resources/privilegedidentitymanagementv3-overview?view=graph-rest-beta&preserve-view=true#security-alerts-for-azure-ad-roles).

## Prerequisites

+ Have an understanding of [PIM for Azure AD roles APIs](/graph/api/resources/privilegedidentitymanagementv3-overview) or [PIM for groups APIs](/graph/api/resources/privilegedidentitymanagement-for-groups-api-overview).
+ In this article, you call the APIs in a [delegated scenario](/graph/auth-v2-user).
  + Sign in to an API client such as [Graph Explorer](https://aka.ms/ge), Postman, or create your own client app to call Microsoft Graph. Use an account with at least the *Privileged Role Administrator* role.
  + Grant yourself the *RoleManagementAlert.ReadWrite.Directory* delegated permission.

<!--
Consider moving this to the API Overview (replace existing) and keeping this article to the how-to steps only.

| Scenario | Resources and associated APIs |
|--|--|
| Identify the security alert types that Azure AD defines, their severity level, and mitigation steps. Seven types of security alerts for Azure AD roles are supported today. | unifiedRoleManagementAlertDefinition |
| Identify the alerts as they apply to your tenant and the customized settings. For example, whether the alerts are disabled or enabled for scanning in the tenant, the threshold that when crossed triggers a known incident, frequency of scanning. | unifiedRoleManagementAlertConfiguration |
| Identify the actual related incidents that led to a security alert being triggered. For example, when a role is assigned outside PIM, the target principal and the role in scope of the incident. | unifiedRoleManagementAlertIncident |
| A comprehensive hierarchy of alerts information in the tenant, including the alert definition, alert incidents, and alert configuration | unifiedRoleManagementAlert |

-->

## List all PIM alerts

### Request
<!-- clarify this statement in the draft: All built-in roles are granted access to this operation.-->

Only alerts relating to Azure AD built-in roles and scoped to the tenant are supported and can be retrieved using the following request. Not specifying the correct scope and scopeType returns a `400 Bad Request` error.
<!-- {
  "blockType": "request",
  "name": "how-to-pim-alerts-list-alerts"
}-->
```http
GET https://graph.microsoft.com/beta/identityGovernance/roleManagementAlerts/alerts?$filter=scopeId eq '/' and scopeType eq 'DirectoryRole'
```

### Response

Here's an example of the response.
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "Collection(microsoft.graph.unifiedRoleManagementAlert)"
}
-->
``` http
HTTP/1.1 200 OK
Content-Type: application/json

{
    "@odata.context": "https://graph.microsoft.com/beta/$metadata#identityGovernance/roleManagementAlerts/alerts",
    "@microsoft.graph.tips": "Use $select to choose only the properties your app needs, as this can lead to performance improvements. For example: GET identityGovernance/roleManagementAlerts/alerts?$select=alertDefinitionId,incidentCount",
    "value": [
        {
            "id": "DirectoryRole_3b0e753b-22fa-4c16-9bf2-470b80be80d6_InvalidLicenseAlert",
            "alertDefinitionId": "DirectoryRole_3b0e753b-22fa-4c16-9bf2-470b80be80d6_InvalidLicenseAlert",
            "scopeId": "/",
            "scopeType": "DirectoryRole",
            "incidentCount": 0,
            "isActive": false,
            "lastModifiedDateTime": "0001-01-01T08:00:00Z",
            "lastScannedDateTime": "2023-09-20T17:05:57.457Z"
        },
        {
            "id": "DirectoryRole_3b0e753b-22fa-4c16-9bf2-470b80be80d6_NoMfaOnRoleActivationAlert",
            "alertDefinitionId": "DirectoryRole_3b0e753b-22fa-4c16-9bf2-470b80be80d6_NoMfaOnRoleActivationAlert",
            "scopeId": "/",
            "scopeType": "DirectoryRole",
            "incidentCount": 0,
            "isActive": false,
            "lastModifiedDateTime": "0001-01-01T08:00:00Z",
            "lastScannedDateTime": "2023-09-20T17:06:01.25Z"
        },
        {
            "id": "DirectoryRole_3b0e753b-22fa-4c16-9bf2-470b80be80d6_RedundantAssignmentAlert",
            "alertDefinitionId": "DirectoryRole_3b0e753b-22fa-4c16-9bf2-470b80be80d6_RedundantAssignmentAlert",
            "scopeId": "/",
            "scopeType": "DirectoryRole",
            "incidentCount": 0,
            "isActive": false,
            "lastModifiedDateTime": "0001-01-01T08:00:00Z",
            "lastScannedDateTime": "2023-09-20T17:06:00.603Z"
        },
        {
            "id": "DirectoryRole_3b0e753b-22fa-4c16-9bf2-470b80be80d6_RolesAssignedOutsidePimAlert",
            "alertDefinitionId": "DirectoryRole_3b0e753b-22fa-4c16-9bf2-470b80be80d6_RolesAssignedOutsidePimAlert",
            "scopeId": "/",
            "scopeType": "DirectoryRole",
            "incidentCount": 0,
            "isActive": false,
            "lastModifiedDateTime": "0001-01-01T08:00:00Z",
            "lastScannedDateTime": "2023-09-20T17:05:57.78Z"
        },
        {
            "id": "DirectoryRole_3b0e753b-22fa-4c16-9bf2-470b80be80d6_SequentialActivationRenewalsAlert",
            "alertDefinitionId": "DirectoryRole_3b0e753b-22fa-4c16-9bf2-470b80be80d6_SequentialActivationRenewalsAlert",
            "scopeId": "/",
            "scopeType": "DirectoryRole",
            "incidentCount": 0,
            "isActive": false,
            "lastModifiedDateTime": "0001-01-01T08:00:00Z",
            "lastScannedDateTime": "2023-09-20T17:05:57.857Z"
        },
        {
            "id": "DirectoryRole_3b0e753b-22fa-4c16-9bf2-470b80be80d6_StaleSignInAlert",
            "alertDefinitionId": "DirectoryRole_3b0e753b-22fa-4c16-9bf2-470b80be80d6_StaleSignInAlert",
            "scopeId": "/",
            "scopeType": "DirectoryRole",
            "incidentCount": 0,
            "isActive": false,
            "lastModifiedDateTime": "0001-01-01T08:00:00Z",
            "lastScannedDateTime": "2023-09-20T17:06:03.117Z"
        },
        {
            "id": "DirectoryRole_3b0e753b-22fa-4c16-9bf2-470b80be80d6_TooManyGlobalAdminsAssignedToTenantAlert",
            "alertDefinitionId": "DirectoryRole_3b0e753b-22fa-4c16-9bf2-470b80be80d6_TooManyGlobalAdminsAssignedToTenantAlert",
            "scopeId": "/",
            "scopeType": "DirectoryRole",
            "incidentCount": 7,
            "isActive": true,
            "lastModifiedDateTime": "2023-09-20T17:06:01.363Z",
            "lastScannedDateTime": "2023-09-20T17:06:01.363Z"
        }
    ]
}
```

## Get a PIM alert

### Request
<!-- {
  "blockType": "request",
  "name": "how-to-pim-alerts-get-alert"
}-->
```http
GET https://graph.microsoft.com/beta/identityGovernance/roleManagementAlerts/alerts/DirectoryRole_3b0e753b-22fa-4c16-9bf2-470b80be80d6_TooManyGlobalAdminsAssignedToTenantAlert
```

### Response

Here's an example of the response.
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.unifiedRoleManagementAlert"
}
-->
``` http
HTTP/1.1 200 OK
Content-Type: application/json

{
    "@odata.context": "https://graph.microsoft.com/beta/$metadata#identityGovernance/roleManagementAlerts/alerts/$entity",
    "@microsoft.graph.tips": "Use $select to choose only the properties your app needs, as this can lead to performance improvements. For example: GET identityGovernance/roleManagementAlerts/alerts('<key>')?$select=alertDefinitionId,incidentCount",
    "id": "DirectoryRole_3b0e753b-22fa-4c16-9bf2-470b80be80d6_TooManyGlobalAdminsAssignedToTenantAlert",
    "alertDefinitionId": "DirectoryRole_3b0e753b-22fa-4c16-9bf2-470b80be80d6_TooManyGlobalAdminsAssignedToTenantAlert",
    "scopeId": "/",
    "scopeType": "DirectoryRole",
    "incidentCount": 7,
    "isActive": true,
    "lastModifiedDateTime": "2023-09-20T17:06:01.363Z",
    "lastScannedDateTime": "2023-09-20T17:06:01.363Z"
}
```

## Get a security alert and expand the relationships to read the definition, configuration, and incidents

### Request

You can read the security alert and its definition, configuration, and related incidents in the tenant by either expanding all relationships using the wildcard character (*), or by expanding the relationships individually using `$expand=alertDefinition,alertConfiguration,alertIncidents`.

This request helps you avoid retrieving the alert definition, configuration, and incidents separately, and then correlating them to the alert.

<!-- {
  "blockType": "request",
  "name": "how-to-pim-alerts-get-alert-expand-relationships"
}-->
```http
GET https://graph.microsoft.com/beta/identityGovernance/roleManagementAlerts/alerts/DirectoryRole_3b0e753b-22fa-4c16-9bf2-470b80be80d6_TooManyGlobalAdminsAssignedToTenantAlert?$expand=*
```

### Response

Here's an example of the response.
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.unifiedRoleManagementAlert"
}
-->
``` http
HTTP/1.1 200 OK
Content-Type: application/json

{
    "@odata.context": "https://graph.microsoft.com/beta/$metadata#identityGovernance/roleManagementAlerts/alerts(alertConfiguration(),alertDefinition(),alertIncidents())/$entity",
    "@microsoft.graph.tips": "Use $select to choose only the properties your app needs, as this can lead to performance improvements. For example: GET identityGovernance/roleManagementAlerts/alerts('<key>')?$select=alertDefinitionId,incidentCount",
    "id": "DirectoryRole_3b0e753b-22fa-4c16-9bf2-470b80be80d6_TooManyGlobalAdminsAssignedToTenantAlert",
    "alertDefinitionId": "DirectoryRole_3b0e753b-22fa-4c16-9bf2-470b80be80d6_TooManyGlobalAdminsAssignedToTenantAlert",
    "scopeId": "/",
    "scopeType": "DirectoryRole",
    "incidentCount": 7,
    "isActive": true,
    "lastModifiedDateTime": "2023-09-20T17:06:01.363Z",
    "lastScannedDateTime": "2023-09-20T17:06:01.363Z",
    "alertConfiguration": {
        "@odata.type": "#microsoft.graph.tooManyGlobalAdminsAssignedToTenantAlertConfiguration",
        "id": "DirectoryRole_3b0e753b-22fa-4c16-9bf2-470b80be80d6_TooManyGlobalAdminsAssignedToTenantAlert",
        "alertDefinitionId": "DirectoryRole_3b0e753b-22fa-4c16-9bf2-470b80be80d6_TooManyGlobalAdminsAssignedToTenantAlert",
        "scopeType": "DirectoryRole",
        "scopeId": "/",
        "isEnabled": true,
        "globalAdminCountThreshold": 3,
        "percentageOfGlobalAdminsOutOfRolesThreshold": 10
    },
    "alertDefinition": {
        "id": "DirectoryRole_3b0e753b-22fa-4c16-9bf2-470b80be80d6_TooManyGlobalAdminsAssignedToTenantAlert",
        "displayName": "There are too many global administrators",
        "scopeType": "DirectoryRole",
        "scopeId": "/",
        "description": "The percentage of global administrators is high, relative to other privileged roles. It is recommended to use least privileged roles, with just enough privileges to perform the required tasks.",
        "severityLevel": "low",
        "securityImpact": "Global administrator is the highest privileged role. If a Global Administrator is compromised, the attacker gains access to all of their permissions, which puts your whole system at risk.",
        "mitigationSteps": "·Review the users in the list and remove any that do not absolutely need the Global Administrator role.·Assign lower privileged roles to these users instead.",
        "howToPrevent": "Assign users the least privileged role they need.",
        "isRemediatable": true,
        "isConfigurable": true
    },
    "alertIncidents@odata.context": "https://graph.microsoft.com/beta/$metadata#identityGovernance/roleManagementAlerts/alerts('DirectoryRole_3b0e753b-22fa-4c16-9bf2-470b80be80d6_TooManyGlobalAdminsAssignedToTenantAlert')/alertIncidents",
    "alertIncidents": [
        {
            "@odata.type": "#microsoft.graph.tooManyGlobalAdminsAssignedToTenantAlertIncident",
            "id": "60caa50f-7863-4f48-bf97-2a8fb990b681",
            "assigneeId": "60caa50f-7863-4f48-bf97-2a8fb990b681",
            "assigneeDisplayName": "MOD Administrator",
            "assigneeUserPrincipalName": "admin@M365x56085806.onmicrosoft.com"
        },
        {
            "@odata.type": "#microsoft.graph.tooManyGlobalAdminsAssignedToTenantAlertIncident",
            "id": "6dd82b18-d45f-4346-bf87-e9700db41849",
            "assigneeId": "6dd82b18-d45f-4346-bf87-e9700db41849",
            "assigneeDisplayName": "Nestor Wilke",
            "assigneeUserPrincipalName": "NestorW@Contoso.com"
        },
        {
            "@odata.type": "#microsoft.graph.tooManyGlobalAdminsAssignedToTenantAlertIncident",
            "id": "87404028-0c5b-4d0a-9d9d-3150e4b5ce74",
            "assigneeId": "87404028-0c5b-4d0a-9d9d-3150e4b5ce74",
            "assigneeDisplayName": "Isaiah Langer",
            "assigneeUserPrincipalName": "IsaiahL@Contoso.com"
        },
        {
            "@odata.type": "#microsoft.graph.tooManyGlobalAdminsAssignedToTenantAlertIncident",
            "id": "143ebd3d-e522-485c-aa52-94675ee83e6c",
            "assigneeId": "143ebd3d-e522-485c-aa52-94675ee83e6c",
            "assigneeDisplayName": "Lidia Holloway",
            "assigneeUserPrincipalName": "LidiaH@Contoso.com"
        },
        {
            "@odata.type": "#microsoft.graph.tooManyGlobalAdminsAssignedToTenantAlertIncident",
            "id": "2832ca72-700e-4f20-a3c7-97028803a95b",
            "assigneeId": "2832ca72-700e-4f20-a3c7-97028803a95b",
            "assigneeDisplayName": "Microsoft Service Account",
            "assigneeUserPrincipalName": "ms-serviceaccount@Contoso.com"
        },
        {
            "@odata.type": "#microsoft.graph.tooManyGlobalAdminsAssignedToTenantAlertIncident",
            "id": "31336492-bf1b-48bb-a072-e554e4f992fc",
            "assigneeId": "31336492-bf1b-48bb-a072-e554e4f992fc",
            "assigneeDisplayName": "Megan Bowen",
            "assigneeUserPrincipalName": "MeganB@Contoso.com"
        },
        {
            "@odata.type": "#microsoft.graph.tooManyGlobalAdminsAssignedToTenantAlertIncident",
            "id": "308110a6-4f71-49c2-bbef-c6dbda50b392",
            "assigneeId": "308110a6-4f71-49c2-bbef-c6dbda50b392",
            "assigneeDisplayName": "Allan Deyoung",
            "assigneeUserPrincipalName": "AllanD@Contoso.com"
        }
    ]
}
```

## Get details of the incidents that triggered an alert

### Request
<!-- {
  "blockType": "request",
  "name": "how-to-pim-alert-get-incidents"
}-->

```http
GET https://graph.microsoft.com/beta/identityGovernance/roleManagementAlerts/alerts/DirectoryRole_3b0e753b-22fa-4c16-9bf2-470b80be80d6_TooManyGlobalAdminsAssignedToTenantAlert/alertIncidents
```

### Response

Here's an example of the response.
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "Collection(microsoft.graph.unifiedRoleManagementAlertIncident)"
}
-->
``` http
HTTP/1.1 200 OK
Content-Type: application/json

{
    "@odata.context": "https://graph.microsoft.com/beta/$metadata#identityGovernance/roleManagementAlerts/alerts('DirectoryRole_3b0e753b-22fa-4c16-9bf2-470b80be80d6_TooManyGlobalAdminsAssignedToTenantAlert')/alertIncidents",
    "@microsoft.graph.tips": "Use $select to choose only the properties your app needs, as this can lead to performance improvements. For example: GET identityGovernance/roleManagementAlerts/alerts('<key>')/alertIncidents?$select=id",
    "value": [
        {
            "@odata.type": "#microsoft.graph.tooManyGlobalAdminsAssignedToTenantAlertIncident",
            "id": "143ebd3d-e522-485c-aa52-94675ee83e6c",
            "assigneeId": "143ebd3d-e522-485c-aa52-94675ee83e6c",
            "assigneeDisplayName": "Lidia Holloway",
            "assigneeUserPrincipalName": "LidiaH@M365x56085806.OnMicrosoft.com"
        },
        {
            "@odata.type": "#microsoft.graph.tooManyGlobalAdminsAssignedToTenantAlertIncident",
            "id": "2832ca72-700e-4f20-a3c7-97028803a95b",
            "assigneeId": "2832ca72-700e-4f20-a3c7-97028803a95b",
            "assigneeDisplayName": "Microsoft Service Account",
            "assigneeUserPrincipalName": "ms-serviceaccount@M365x56085806.OnMicrosoft.com"
        },
        {
            "@odata.type": "#microsoft.graph.tooManyGlobalAdminsAssignedToTenantAlertIncident",
            "id": "308110a6-4f71-49c2-bbef-c6dbda50b392",
            "assigneeId": "308110a6-4f71-49c2-bbef-c6dbda50b392",
            "assigneeDisplayName": "Allan Deyoung",
            "assigneeUserPrincipalName": "AllanD@M365x56085806.OnMicrosoft.com"
        },
        {
            "@odata.type": "#microsoft.graph.tooManyGlobalAdminsAssignedToTenantAlertIncident",
            "id": "31336492-bf1b-48bb-a072-e554e4f992fc",
            "assigneeId": "31336492-bf1b-48bb-a072-e554e4f992fc",
            "assigneeDisplayName": "Megan Bowen",
            "assigneeUserPrincipalName": "MeganB@M365x56085806.OnMicrosoft.com"
        },
        {
            "@odata.type": "#microsoft.graph.tooManyGlobalAdminsAssignedToTenantAlertIncident",
            "id": "60caa50f-7863-4f48-bf97-2a8fb990b681",
            "assigneeId": "60caa50f-7863-4f48-bf97-2a8fb990b681",
            "assigneeDisplayName": "MOD Administrator",
            "assigneeUserPrincipalName": "admin@M365x56085806.onmicrosoft.com"
        },
        {
            "@odata.type": "#microsoft.graph.tooManyGlobalAdminsAssignedToTenantAlertIncident",
            "id": "6dd82b18-d45f-4346-bf87-e9700db41849",
            "assigneeId": "6dd82b18-d45f-4346-bf87-e9700db41849",
            "assigneeDisplayName": "Nestor Wilke",
            "assigneeUserPrincipalName": "NestorW@M365x56085806.OnMicrosoft.com"
        },
        {
            "@odata.type": "#microsoft.graph.tooManyGlobalAdminsAssignedToTenantAlertIncident",
            "id": "87404028-0c5b-4d0a-9d9d-3150e4b5ce74",
            "assigneeId": "87404028-0c5b-4d0a-9d9d-3150e4b5ce74",
            "assigneeDisplayName": "Isaiah Langer",
            "assigneeUserPrincipalName": "IsaiahL@M365x56085806.OnMicrosoft.com"
        }
    ]
}
```

## Dismiss an alert

You dismiss an alert by setting the **isActive** property to `true`. When you dismiss an alert, PIM no longer scans the alert in your tenant for incidents. Existing incidents can still be queried, but no new incidents are generated. You can re-enable the alert by setting the `isActive` property to `true` or by [refreshing the alert type](#refresh-an-alert-type).

<!-- Riana to clarify the second sentence: Isn't scanning suspended for the day only - until PIM automatically rescans the tenant in the next run where it reactivates the alert?-->

<!-- {
  "blockType": "request",
  "name": "how-to-pim-alerts-dismiss-alert"
}-->

```http
PATCH https://graph.microsoft.com/beta/identityGovernance/roleManagementAlerts/alerts/DirectoryRole_3b0e753b-22fa-4c16-9bf2-470b80be80d6_RolesAssignedOutsidePimAlert
Content-Type: application/json

{
    "isActive": false
}
```

The request returns a `204 No Content` response.

## Refresh an alert type

When you refresh an alert type, PIM scans the tenant for incidents that match the alert type. This request is a long-running operation and returns a **Location** header that you can use to poll the status of the operation - whether the alert was refreshed or failed. PIM includes alerts that you previously dismissed in the refresh operation, reactives dismissed alerts (updates **isActive** to `true`), and generates new incidents.

### Request
<!-- {
  "blockType": "request",
  "name": "how-to-pim-alerts-refresh-alert"
}-->

```http
POST https://graph.microsoft.com/beta/identityGovernance/roleManagementAlerts/alerts/DirectoryRole_3b0e753b-22fa-4c16-9bf2-470b80be80d6_RolesAssignedOutsidePimAlert/refresh
```

### Response

```http
HTTP/1.1 202 Accepted
Location: https://graph.microsoft.com/beta/identityGovernance/roleManagementAlerts/operations/refresh:DirectoryRole_3b0e753b-22fa-4c16-9bf2-470b80be80d6_RolesAssignedOutsidePimAlert
```

## Refresh all alert types

When you refresh all alerts, PIM scans the tenant for all incidents. This request is a long-running operation and returns a **Location** header that you can use to poll the status of the operation - whether the alerts were refreshed or failed. PIM includes alerts that you previously dismissed in the refresh operation, reactives dismissed alerts (updates **isActive** to `true`), and generates new incidents.

### Request

Currently, only the tenant scope (`/`) and `DirectoryRole` scope type are supported.
<!-- {
  "blockType": "request",
  "name": "how-to-pim-alerts-refresh-all-alerts"
}-->

```http
POST https://graph.microsoft.com/beta/identityGovernance/roleManagementAlerts/alerts/refresh
Content-Type: application/json

{
    "scopeId" : "/",
    "scopeType" : "DirectoryRole"
}
```

### Response

```http
HTTP/1.1 202 Accepted
Location: https://graph.microsoft.com/beta/identityGovernance/roleManagementAlerts/operations/refresh:DirectoryRole_3b0e753b-22fa-4c16-9bf2-470b80be80d6_RolesAssignedOutsidePimAlert
```

## Update an alert configuration

Updating an alert configuration means to change the tenant-specific settings that control how PIM scans the tenant for incidents that match the alert type. For example, whether to scan the alert in the tenant or you can change the threshold that when crossed triggers a known incident.

<!-- Q: Riana - isActive for alert vs isEnabled for alert configuration -  what's the difference? -->

<!-- {
  "blockType": "request",
  "name": "how-to-pim-alerts-update-configuration"
}-->

```http
PATCH https://graph.microsoft.com/beta/identityGovernance/roleManagementAlerts/alertConfigurations/DirectoryRole_3b0e753b-22fa-4c16-9bf2-470b80be80d6_TooManyGlobalAdminsAssignedToTenantAlert
Content-Type: application/json

{
    "@odata.type": "#microsoft.graph.tooManyGlobalAdminsAssignedToTenantAlertConfiguration",
    "isEnabled": true,
    "globalAdminCountThreshold": 4,
    "percentageOfGlobalAdminsOutOfRolesThreshold": 10
}
```

The request returns a `204 No Content` response.

## Remediate an alert incident

Remediating an alert incident means requesting Azure AD to apply the mitigationSteps that are defined in the alert definition. For example, if the alert definition recommends that you remove a user from a role, then remediating the incident means that Azure AD removes the user from the role.

### Request
<!-- {
  "blockType": "request",
  "name": "how-to-pim-alerts-remediate-incident"
}-->

```http
POST https://graph.microsoft.com/beta/identityGovernance/roleManagementAlerts/alerts/DirectoryRole_3b0e753b-22fa-4c16-9bf2-470b80be80d6_RolesAssignedOutsidePimAlert/alertIncidents/9e864769-63e3-4635-8069-551bcd46183d/remediate 
```

### Response

```http
HTTP/1.1 200 OK
```

## See also

+ [Tutorial: Assign Azure AD roles through PIM](tutorial-assign-azureadroles.md)
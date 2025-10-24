---
title: "Manage security alerts for Microsoft Entra roles using PIM APIs"
description: "Learn how to manage security alerts for Microsoft Entra roles using PIM APIs."
author: FaithOmbongi
ms.author: ombongifaith
ms.reviewer: rianakarim
ms.localizationpriority: medium
ms.topic: how-to
ms.subservice: entra-id-governance
ms.date: 09/29/2025
ms.custom: sfi-ga-nochange
#Customer intent: As a developer, I want to learn how to programmatically manage security alerts relating to Microsoft Entra roles via Privileged Identity Management (PIM).
---

# Manage security alerts for Microsoft Entra roles by using PIM APIs


Privileged Identity Management (PIM) for Microsoft Entra roles generates alerts when it detects suspicious or unsafe settings for Microsoft Entra roles in your tenant. This article describes scenarios for managing PIM alerts by using Microsoft Graph.

For more information about API resources for managing PIM security alerts, see [Security alerts for Microsoft Entra roles](/graph/api/resources/privilegedidentitymanagementv3-overview?view=graph-rest-beta&preserve-view=true#security-alerts-for-azure-ad-roles).

> [!NOTE]
> PIM security alerts are currently on the `/beta` endpoint only and are available only for Microsoft Entra roles.

## Prerequisites

+ Understand [PIM for Microsoft Entra roles APIs](/graph/api/resources/privilegedidentitymanagementv3-overview).
+ In this article, you call the APIs in a [delegated scenario](/graph/auth-v2-user).
  + Sign in to an API client such as [Graph Explorer](https://aka.ms/ge) with administrative privileges to manage PIM rules. The *Privileged Role Administrator* role is the least privileged role sufficient to manage PIM rules.
  + Grant yourself the *RoleManagementAlert.ReadWrite.Directory* delegated permission.

## List all PIM alerts

### Request
<!-- clarify this statement in the draft: All built-in roles are granted access to this operation.-->

Only alerts that relate to Microsoft Entra built-in roles and are scoped to the tenant (`/`) are supported. You can retrieve these alerts by using the following request. If you don't specify the correct **scope** and **scopeType**, the request returns a `400 Bad Request` error.
# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "how-to-pim-alerts-list-alerts"
}-->
```msgraph-interactive
GET https://graph.microsoft.com/beta/identityGovernance/roleManagementAlerts/alerts?$filter=scopeId eq '/' and scopeType eq 'DirectoryRole'
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/beta/how-to-pim-alerts-list-alerts-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/beta/how-to-pim-alerts-list-alerts-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/beta/how-to-pim-alerts-list-alerts-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/beta/how-to-pim-alerts-list-alerts-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/beta/how-to-pim-alerts-list-alerts-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PowerShell](#tab/powershell)
[!INCLUDE [sample-code](../includes/snippets/powershell/beta/how-to-pim-alerts-list-alerts-powershell-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Python](#tab/python)
[!INCLUDE [sample-code](../includes/snippets/python/beta/how-to-pim-alerts-list-alerts-python-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

### Response

The following example shows the response.
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "Collection(microsoft.graph.unifiedRoleManagementAlert)"
}
-->
```http
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
# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "how-to-pim-alerts-get-alert"
}-->
```msgraph-interactive
GET https://graph.microsoft.com/beta/identityGovernance/roleManagementAlerts/alerts/DirectoryRole_3b0e753b-22fa-4c16-9bf2-470b80be80d6_TooManyGlobalAdminsAssignedToTenantAlert
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/beta/how-to-pim-alerts-get-alert-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/beta/how-to-pim-alerts-get-alert-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/beta/how-to-pim-alerts-get-alert-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/beta/how-to-pim-alerts-get-alert-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/beta/how-to-pim-alerts-get-alert-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PowerShell](#tab/powershell)
[!INCLUDE [sample-code](../includes/snippets/powershell/beta/how-to-pim-alerts-get-alert-powershell-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Python](#tab/python)
[!INCLUDE [sample-code](../includes/snippets/python/beta/how-to-pim-alerts-get-alert-python-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

### Response

The following example shows the response.
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.unifiedRoleManagementAlert"
}
-->
```http
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

You can read a security alert and its definition, configuration, and related incidents in the tenant in a single query. Either expand all relationships by using the wildcard character (*), or expand the relationships individually by using `$expand=alertDefinition,alertConfiguration,alertIncidents`. This request helps you avoid retrieving the alert definition, configuration, and incidents separately, and then correlating them to the alert.

# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "how-to-pim-alerts-get-alert-expand-relationships"
}-->
```msgraph-interactive
GET https://graph.microsoft.com/beta/identityGovernance/roleManagementAlerts/alerts/DirectoryRole_3b0e753b-22fa-4c16-9bf2-470b80be80d6_TooManyGlobalAdminsAssignedToTenantAlert?$expand=*
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/beta/how-to-pim-alerts-get-alert-expand-relationships-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/beta/how-to-pim-alerts-get-alert-expand-relationships-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/beta/how-to-pim-alerts-get-alert-expand-relationships-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [snippet-not-available](../includes/snippets/snippet-not-available.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/beta/how-to-pim-alerts-get-alert-expand-relationships-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PowerShell](#tab/powershell)
[!INCLUDE [sample-code](../includes/snippets/powershell/beta/how-to-pim-alerts-get-alert-expand-relationships-powershell-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Python](#tab/python)
[!INCLUDE [sample-code](../includes/snippets/python/beta/how-to-pim-alerts-get-alert-expand-relationships-python-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

### Response

The following example shows the response.
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.unifiedRoleManagementAlert"
}
-->
```http
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
            "assigneeUserPrincipalName": "admin@contoso.com"
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
# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "how-to-pim-alert-get-incidents"
}-->

```msgraph-interactive
GET https://graph.microsoft.com/beta/identityGovernance/roleManagementAlerts/alerts/DirectoryRole_3b0e753b-22fa-4c16-9bf2-470b80be80d6_TooManyGlobalAdminsAssignedToTenantAlert/alertIncidents
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/beta/how-to-pim-alert-get-incidents-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/beta/how-to-pim-alert-get-incidents-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/beta/how-to-pim-alert-get-incidents-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/beta/how-to-pim-alert-get-incidents-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/beta/how-to-pim-alert-get-incidents-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PowerShell](#tab/powershell)
[!INCLUDE [sample-code](../includes/snippets/powershell/beta/how-to-pim-alert-get-incidents-powershell-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Python](#tab/python)
[!INCLUDE [sample-code](../includes/snippets/python/beta/how-to-pim-alert-get-incidents-python-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

### Response

The following example shows the response.
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "Collection(microsoft.graph.unifiedRoleManagementAlertIncident)"
}
-->
```http
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
            "assigneeUserPrincipalName": "LidiaH@contoso.com"
        },
        {
            "@odata.type": "#microsoft.graph.tooManyGlobalAdminsAssignedToTenantAlertIncident",
            "id": "2832ca72-700e-4f20-a3c7-97028803a95b",
            "assigneeId": "2832ca72-700e-4f20-a3c7-97028803a95b",
            "assigneeDisplayName": "Microsoft Service Account",
            "assigneeUserPrincipalName": "ms-serviceaccount@contoso.com"
        },
        {
            "@odata.type": "#microsoft.graph.tooManyGlobalAdminsAssignedToTenantAlertIncident",
            "id": "308110a6-4f71-49c2-bbef-c6dbda50b392",
            "assigneeId": "308110a6-4f71-49c2-bbef-c6dbda50b392",
            "assigneeDisplayName": "Allan Deyoung",
            "assigneeUserPrincipalName": "AllanD@contoso.com"
        },
        {
            "@odata.type": "#microsoft.graph.tooManyGlobalAdminsAssignedToTenantAlertIncident",
            "id": "31336492-bf1b-48bb-a072-e554e4f992fc",
            "assigneeId": "31336492-bf1b-48bb-a072-e554e4f992fc",
            "assigneeDisplayName": "Megan Bowen",
            "assigneeUserPrincipalName": "MeganB@contoso.com"
        },
        {
            "@odata.type": "#microsoft.graph.tooManyGlobalAdminsAssignedToTenantAlertIncident",
            "id": "60caa50f-7863-4f48-bf97-2a8fb990b681",
            "assigneeId": "60caa50f-7863-4f48-bf97-2a8fb990b681",
            "assigneeDisplayName": "MOD Administrator",
            "assigneeUserPrincipalName": "admin@contoso.com"
        },
        {
            "@odata.type": "#microsoft.graph.tooManyGlobalAdminsAssignedToTenantAlertIncident",
            "id": "6dd82b18-d45f-4346-bf87-e9700db41849",
            "assigneeId": "6dd82b18-d45f-4346-bf87-e9700db41849",
            "assigneeDisplayName": "Nestor Wilke",
            "assigneeUserPrincipalName": "NestorW@contoso.com"
        },
        {
            "@odata.type": "#microsoft.graph.tooManyGlobalAdminsAssignedToTenantAlertIncident",
            "id": "87404028-0c5b-4d0a-9d9d-3150e4b5ce74",
            "assigneeId": "87404028-0c5b-4d0a-9d9d-3150e4b5ce74",
            "assigneeDisplayName": "Isaiah Langer",
            "assigneeUserPrincipalName": "IsaiahL@contoso.com"
        }
    ]
}
```

## Dismiss an alert

You dismiss an alert by setting the **isActive** property to `false`. When you dismiss an alert, PIM no longer scans the alert in your tenant for incidents. Existing incidents can still be queried, but no new incidents are generated. You can re-enable the alert by setting the `isActive` property to `true` or by [refreshing the alert type](#refresh-alerts).

The request returns a `204 No Content` response.

# [HTTP](#tab/http)
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

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/beta/how-to-pim-alerts-dismiss-alert-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/beta/how-to-pim-alerts-dismiss-alert-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/beta/how-to-pim-alerts-dismiss-alert-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/beta/how-to-pim-alerts-dismiss-alert-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/beta/how-to-pim-alerts-dismiss-alert-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PowerShell](#tab/powershell)
[!INCLUDE [snippet-not-available](../includes/snippets/snippet-not-available.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Python](#tab/python)
[!INCLUDE [sample-code](../includes/snippets/python/beta/how-to-pim-alerts-dismiss-alert-python-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

## Refresh alerts

In PIM, you can refresh a single alert type or all alerts in the tenant. When you refresh either type, PIM scans the tenant for incidents that match the alerts. This request is a long-running operation and returns a **Location** header that you can use to poll the status of the operation - whether the refresh succeeded or failed. In a successful refresh, PIM includes alerts that you previously dismissed, reactivates dismissed alerts (updates **isActive** to `true`), and scans and generates new incidents for the alerts.

### Refresh a single alert type

#### Request
# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "how-to-pim-alerts-refresh-alert"
}-->

```http
POST https://graph.microsoft.com/beta/identityGovernance/roleManagementAlerts/alerts/DirectoryRole_3b0e753b-22fa-4c16-9bf2-470b80be80d6_RolesAssignedOutsidePimAlert/refresh
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/beta/how-to-pim-alerts-refresh-alert-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/beta/how-to-pim-alerts-refresh-alert-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/beta/how-to-pim-alerts-refresh-alert-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/beta/how-to-pim-alerts-refresh-alert-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/beta/how-to-pim-alerts-refresh-alert-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PowerShell](#tab/powershell)
[!INCLUDE [sample-code](../includes/snippets/powershell/beta/how-to-pim-alerts-refresh-alert-powershell-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Python](#tab/python)
[!INCLUDE [sample-code](../includes/snippets/python/beta/how-to-pim-alerts-refresh-alert-python-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

### Response

```http
HTTP/1.1 202 Accepted
Location: https://graph.microsoft.com/beta/identityGovernance/roleManagementAlerts/operations/refresh:DirectoryRole_3b0e753b-22fa-4c16-9bf2-470b80be80d6_RolesAssignedOutsidePimAlert
```

### Refresh all alert types in the tenant

#### Request

Only the tenant scope (`/`) and `DirectoryRole` scope type are supported.
# [HTTP](#tab/http)
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

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/beta/how-to-pim-alerts-refresh-all-alerts-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/beta/how-to-pim-alerts-refresh-all-alerts-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/beta/how-to-pim-alerts-refresh-all-alerts-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/beta/how-to-pim-alerts-refresh-all-alerts-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/beta/how-to-pim-alerts-refresh-all-alerts-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PowerShell](#tab/powershell)
[!INCLUDE [snippet-not-available](../includes/snippets/snippet-not-available.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Python](#tab/python)
[!INCLUDE [sample-code](../includes/snippets/python/beta/how-to-pim-alerts-refresh-all-alerts-python-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

#### Response

```http
HTTP/1.1 202 Accepted
Location: https://graph.microsoft.com/beta/identityGovernance/roleManagementAlerts/operations/refresh:DirectoryRole_3b0e753b-22fa-4c16-9bf2-470b80be80d6_RolesAssignedOutsidePimAlert
```

## Update an alert configuration

Updating an alert configuration means changing the tenant-specific settings that control how PIM scans the tenant for incidents that match the alert type. For example, you can change whether to scan the alert in the tenant or you can change the threshold that when crossed triggers a known incident.

# [HTTP](#tab/http)
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

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/beta/how-to-pim-alerts-update-configuration-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/beta/how-to-pim-alerts-update-configuration-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/beta/how-to-pim-alerts-update-configuration-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/beta/how-to-pim-alerts-update-configuration-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/beta/how-to-pim-alerts-update-configuration-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PowerShell](#tab/powershell)
[!INCLUDE [sample-code](../includes/snippets/powershell/beta/how-to-pim-alerts-update-configuration-powershell-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Python](#tab/python)
[!INCLUDE [sample-code](../includes/snippets/python/beta/how-to-pim-alerts-update-configuration-python-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

The request returns a `204 No Content` response.

## Remediate an alert incident

Remediating an alert incident means requesting Microsoft Entra ID to apply the mitigation steps that are defined in the alert definition. For example, if the alert definition recommends that you remove a user from a role, remediating the incident means that Microsoft Entra ID removes the user from the role.

### Request
# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "how-to-pim-alerts-remediate-incident"
}-->

```http
POST https://graph.microsoft.com/beta/identityGovernance/roleManagementAlerts/alerts/DirectoryRole_3b0e753b-22fa-4c16-9bf2-470b80be80d6_RolesAssignedOutsidePimAlert/alertIncidents/9e864769-63e3-4635-8069-551bcd46183d/remediate
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/beta/how-to-pim-alerts-remediate-incident-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/beta/how-to-pim-alerts-remediate-incident-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/beta/how-to-pim-alerts-remediate-incident-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/beta/how-to-pim-alerts-remediate-incident-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/beta/how-to-pim-alerts-remediate-incident-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PowerShell](#tab/powershell)
[!INCLUDE [sample-code](../includes/snippets/powershell/beta/how-to-pim-alerts-remediate-incident-powershell-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Python](#tab/python)
[!INCLUDE [sample-code](../includes/snippets/python/beta/how-to-pim-alerts-remediate-incident-python-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

### Response

```http
HTTP/1.1 200 OK
```

## Related content

+ [Tutorial: Assign Microsoft Entra roles through PIM](tutorial-assign-azureadroles.md).

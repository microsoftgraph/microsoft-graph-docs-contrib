---
title: "configurationDrift: remediate"
description: "Restore all drifted properties of a configurationDrift to their desired values in the baseline."
author: "Anusree-stack"
ms.date: 11/02/2026
ms.localizationpriority: medium
ms.subservice: "tenant-configuration-management"
doc_type: apiPageType
---

# configurationDrift: remediate

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Restore all drifted properties of a [configurationDrift](../resources/configurationdrift.md) to their desired values in the baseline.

This action operates synchronously on one resource instance represented by the drift. It returns success if all drifted properties are updated to the values specified in the baseline; otherwise, it returns failure. On success, the drift's **status** changes to `fixed`. On failure, it remains `active`.

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- { "blockType": "permissions", "name": "configurationdrift_remediate_permissions" } -->
[!INCLUDE [permissions-table](../includes/permissions/configurationdrift-remediate-permissions.md)]

Remediation supports delegated permissions only. In addition to the calling app's delegated `ConfigurationMonitoring.ReadWrite.All` permission, the TCM service principal needs delegated permissions for the target workload, and the signed-in user needs the appropriate resource-management role. See [Set up permissions for remediation and applyOnce](/graph/utcm-authentication-setup#set-up-permissions-for-remediation-and-applyonce-preview).

## HTTP request

<!-- { "blockType": "ignored" } -->
``` http
POST /admin/configurationManagement/configurationDrifts/{configurationDrift-id}/remediate
```

## Request headers

|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|

## Request body

Don't supply a request body for this method.

## Response

If successful, this method returns a `200 OK` response code and a [configurationDriftRemediationResult](../resources/configurationdriftremediationresult.md) object in the response body.

A `200 OK` response means that a remediation result was returned. Check **status** to determine whether remediation succeeded or failed. The current preview doesn't return partial results. An already-fixed drift returns `409 Conflict`.

## Examples

### Request

The following example shows a request.
<!-- {
  "blockType": "request",
  "name": "configurationdrift_remediate_request"
}
-->
``` http
POST https://graph.microsoft.com/beta/admin/configurationManagement/configurationDrifts/33333333-4444-5555-6666-777777777777/remediate
```

### Response

The following example shows the response.

<!-- {
  "blockType": "response",
  "@odata.type": "microsoft.graph.configurationDriftRemediationResult",
  "truncated": true
}
-->
``` http
HTTP/1.1 200 OK
Content-Type: application/json

{
  "@odata.type": "#microsoft.graph.configurationDriftRemediationResult",
  "configurationDriftId": "33333333-4444-5555-6666-777777777777",
  "tenantId": "aaaaaaaa-bbbb-cccc-dddd-eeeeeeeeeeee",
  "status": "succeeded",
  "resourceType": "microsoft.entra.securitydefaults",
  "baselineResourceDisplayName": "Security defaults",
  "resourceInstanceIdentifier": {
    "IsSingleInstance": "Yes"
  },
  "remediatedProperties": [
    {
      "propertyName": "IsEnabled",
      "previousValue": false,
      "currentValue": true,
      "desiredValue": true
    }
  ],
  "remediationFailedProperties": []
}
```

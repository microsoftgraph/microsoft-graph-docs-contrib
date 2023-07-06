---
title: "cloudPC: getProvisionedCloudPCs"
description: "Get all provisioned Cloud PCs of a specific service plan for users under an Azure Active Directory (Azure AD) user group."
author: "SleepIsImportant"
ms.localizationpriority: medium
ms.prod: "cloud-pc"
doc_type: apiPageType
---

# cloudPC: getProvisionedCloudPCs

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Get all provisioned Cloud PCs of a specific service plan for users under an Azure Active Directory (Azure AD) user group.

## Permissions

One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

|Permission type|Permissions (from least to most privileged)|
|:---|:---|
|Delegated (work or school account)|CloudPC.Read.All, CloudPC.ReadWrite.All|
|Delegated (personal Microsoft account)|Not supported.|
|Application|CloudPC.Read.All, CloudPC.ReadWrite.All|

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->

``` http
GET /deviceManagement/virtualEndpoint/cloudPCs/getProvisionedCloudPCs(groupId='{groupId}',servicePlanId='{servicePlanId}')
```

## Request headers

|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required.|

## Request parameter

|Parameter|Type|Description|
|:---|:---|:---|
|groupId|String|The unique identifier for Azure AD user group.|
|servicePlanId|String|The unique identifier of the service plan.|

## Request body

Do not supply a request body for this method.

## Response

If successful, this method returns a `200 OK` response code and a [cloudPC](../resources/cloudPC.md) collection in the response body.

## Examples

### Request

The following is an example of a request.

# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "cloudpc.getProvisionedCloudPCs"
}
-->
``` http
GET https://graph.microsoft.com/beta/deviceManagement/virtualEndpoint/cloudPCs/getProvisionedCloudPCs(groupId='30d0e128-de93-41dc-89ec-33d84bb662a0',servicePlanId='9ecf691d-8b82-46cb-b254-cd061b2c02fb')
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/cloudpcgetprovisionedcloudpcs-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/cloudpcgetprovisionedcloudpcs-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/cloudpcgetprovisionedcloudpcs-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/cloudpcgetprovisionedcloudpcs-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/cloudpcgetprovisionedcloudpcs-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Python](#tab/python)
[!INCLUDE [sample-code](../includes/snippets/python/cloudpcgetprovisionedcloudpcs-python-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

### Response

The following is an example of the response.

<!-- {
  "blockType": "response",
  "@odata.type": "Collection(microsoft.graph.cloudPC)",
  "name": "cloudpc.getProvisionedCloudPCs"
}
-->

``` http
HTTP/1.1 200 OK
Content-Type: application/json

{
    "value": [
        {
            "@odata.type": "#microsoft.graph.cloudPC",
            "id": "662009bc-7732-4f6f-8726-25883518b33e",
            "displayName": "Demo-0",
            "imageDisplayName": "Windows-10 19h1-evd",
            "aadDeviceId": "f5ff445f-7488-40f8-8ab9-ee784a9c1f33",
            "diskEncryptionState": "encryptedUsingCustomerManagedKey",
            "managedDeviceId": "bdc8e6dd-0455-4412-83d9-c818664fe1f1",
            "managedDeviceName": "CPC-ps1-SHYL-46",
            "provisioningPolicyId": "7ed725ad-0a00-4117-b557-d965c3732450",
            "servicePlanId": "9ecf691d-8b82-46cb-b254-cd061b2c02fb",
            "servicePlanName": "Cloud PC Enterprise 4vCPU/16GB/256GB",
            "servicePlanType": "enterprise",
            "status": "provisioned",
            "powerState": "running",
            "userPrincipalName": "pmitchell@cpccustomer001.onmicrosoft.com",
            "lastModifiedDateTime": "2020-07-23T10:29:57Z",
            "statusDetails": null,
            "provisioningType": "dedicated",
            "connectivityResult": "",
            "gracePeriodEndDateTime": null,
            "lastLoginResult": "2020-07-23T10:29:57Z",
            "lastRemoteActionResult": "Succeed",
            "onPremisesConnectionName": "Test-OPNC",
            "osVersion": null,
            "partnerAgentInstallResults": null,
            "provisioningPolicyName": "Test-Policy",
            "userAccountType": null
        },
        {
            "@odata.type": "#microsoft.graph.cloudPC",
            "id": "ac74ae8b-85f7-4272-88cc-5419267403ed",
            "displayName": "Demo-1",
            "imageDisplayName": "Custom image name",
            "aadDeviceId": "61289490-ef06-4962-8f49-455329c8893c",
            "diskEncryptionState": "encryptedUsingCustomerManagedKey",
            "managedDeviceId": "e87f50c7-fa7f-4687-aade-dd45f3d65970",
            "managedDeviceName": "CPC-ps2-7ERZ-QE",
            "provisioningPolicyId": "13fa0778-ba00-438a-96d3-488c86029dff",
            "servicePlanId": "9ecf691d-8b82-46cb-b254-cd061b2c02fb",
            "servicePlanName": "Cloud PC Enterprise 4vCPU/16GB/256GB",
            "servicePlanType": "enterprise",
            "status": "provisioned",
            "powerState": "running",
            "userPrincipalName": "pmitchell@cpccustomer001.onmicrosoft.com",
            "lastModifiedDateTime": "2020-07-28T18:14:34Z",
            "statusDetails": null,
            "provisioningType": "dedicated",
            "connectivityResult": "",
            "gracePeriodEndDateTime": null,
            "lastLoginResult": "2020-07-23T10:29:57Z",
            "lastRemoteActionResult": "Succeed",
            "onPremisesConnectionName": "Test-OPNC",
            "osVersion": null,
            "partnerAgentInstallResults": null,
            "provisioningPolicyName": "Test-Policy",
            "userAccountType": null
        }
    ]
}
```

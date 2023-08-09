---
title: "List cloudPCs"
description: "List properties and relationships of the cloudPC objects."
author: "AshleyYangSZ"
ms.localizationpriority: medium
ms.prod: "cloud-pc"
doc_type: apiPageType
---

# List cloudPCs

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

List the [cloudPC](../resources/cloudpc.md) devices in a tenant.

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
GET /deviceManagement/virtualEndpoint/cloudPCs
```

## Optional query parameters

This method supports `$select`, `$filter`, `$count`, and `$top` OData query parameters to help customize the response. For general information, see [OData query parameters](/graph/query-parameters).

## Request headers

| Name          | Description               |
| :------------ | :------------------------ |
| Authorization | Bearer {token}. Required. |

## Request body

Do not supply a request body for this method.

## Response

If successful, this method returns a `200 OK` response code and a collection of [cloudPC](../resources/cloudpc.md) objects in the response body.

## Examples

### Example 1: List all cloudPC devices in a tenant

The following example shows how to get a list of all [cloudPC](../resources/cloudpc.md) devices in a tenant.

#### Request

The following is an example of the request.

# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "list_cloudpcs"
}
-->

``` http
GET https://graph.microsoft.com/beta/deviceManagement/virtualEndpoint/cloudPCs
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/list-cloudpcs-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/list-cloudpcs-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/list-cloudpcs-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/list-cloudpcs-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/list-cloudpcs-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PowerShell](#tab/powershell)
[!INCLUDE [sample-code](../includes/snippets/powershell/list-cloudpcs-powershell-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Python](#tab/python)
[!INCLUDE [sample-code](../includes/snippets/python/list-cloudpcs-python-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

#### Response

The following is an example of the response.

>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "Collection(microsoft.graph.cloudPC)"
}
-->

``` http
HTTP/1.1 200 OK
Content-Type: application/json

{
  "value": [
    {
      "@odata.type": "#microsoft.graph.cloudPC",
      "aadDeviceId": "f5ff445f-7488-40f8-8ab9-ee784a9c1f33",
      "id": "662009bc-7732-4f6f-8726-25883518ffff",
      "displayName": "Demo-1",
      "imageDisplayName": "Windows-10 19h1-evd",
      "managedDeviceId": "bdc8e6dd-0455-4412-83d9-c818664fffff",
      "managedDeviceName": "A00002GI001",
      "provisioningPolicyId": "7ed725ad-0a00-4117-b557-d965c373ffff",
      "provisioningPolicyName": "HR provisioning policy",
      "onPremisesConnectionName": "Azure network connection for HR",
      "servicePlanId": "dbb9148c-ff83-4a4c-8d7f-28752e93ffff",
      "servicePlanName": "lite",
      "servicePlanType": "enterprise",
      "status": "provisioned",
      "userPrincipalName": "dujanjic@fabrikam.onmicrosoft.com",
      "lastModifiedDateTime": "2020-11-03T10:29:57Z",
      "statusDetails": null,
      "gracePeriodEndDateTime": "2020-11-010T20:00:34Z",
      "provisioningType": "dedicated",
      "diskEncryptionState": "encryptedUsingPlatformManagedKey"
    }
  ]
}
```

### Example 2: Get the top two cloudPC devices in a tenant

The following example shows how to use the `$top` query parameter to get the top two [cloudPC](../resources/cloudpc.md) devices in a tenant.

#### Request

The following is an example of the request.

# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "list_cloudpcs_with_top_query"
}
-->

``` http
GET https://graph.microsoft.com/beta/deviceManagement/virtualEndpoint/cloudPCs?$top=2
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/list-cloudpcs-with-top-query-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/list-cloudpcs-with-top-query-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/list-cloudpcs-with-top-query-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/list-cloudpcs-with-top-query-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/list-cloudpcs-with-top-query-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PowerShell](#tab/powershell)
[!INCLUDE [sample-code](../includes/snippets/powershell/list-cloudpcs-with-top-query-powershell-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Python](#tab/python)
[!INCLUDE [sample-code](../includes/snippets/python/list-cloudpcs-with-top-query-python-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

#### Response

The following is an example of the response.

>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "Collection(microsoft.graph.cloudPC)"
}
-->

``` http
HTTP/1.1 200 OK
Content-Type: application/json

{
    "@odata.context": "https://canary.graph.microsoft.com/testprodbeta_cpc_int/$metadata#deviceManagement/virtualEndpoint/cloudPCs",
    "@odata.count": 200,
    "@odata.nextLink": "https://canary.graph.microsoft.com/testprodbeta_cpc_int/deviceManagement/virtualEndpoint/cloudPCs?$top=2&$skiptoken=7d4e1527-fe5a-4d86-81eb-2c532ac567ce",
    "value": [
        {
            "id": "fd0230cd-4e05-4ecd-ad05-72f8a30042f1",
            "displayName": "RMS-Resize-policy - RMS-Resize-user-05",
            "imageDisplayName": "Windows 11 Enterprise + Microsoft 365 Apps 22H2",
            "provisioningPolicyId": "7f247338-3d25-4bcf-11a0-fe6fba68f41c",
            "provisioningPolicyName": "RMS-Resize-policy",
            "onPremisesConnectionName": "",
            "servicePlanId": "23a25099-1b2f-4e07-84bd-b81606109438",
            "servicePlanName": "Cloud PC Enterprise 2vCPU/4GB/64GB",
            "status": "failed",
            "userPrincipalName": "RMS-Resize-user-05@fabrikam.onmicrosoft.com",
            "lastModifiedDateTime": "2023-04-25T06:24:02Z",
            "managedDeviceId": null,
            "managedDeviceName": null,
            "aadDeviceId": null,
            "gracePeriodEndDateTime": null,
            "servicePlanType": "enterprise",
            "diskEncryptionState": "notAvailable",
            "provisioningType": "dedicated",
            "statusDetails": {
                "code": "intuneEnrollFailed",
                "message": "We can’t complete MEM enrollment of this Cloud PC. Check MEM policy settings and retry. If that doesn’t work, contact Customer support.",
                "additionalInformation": [
                    {
                        "name": "retriable",
                        "value": "true"
                    },
                    {
                        "name": "failedAction",
                        "value": "Provision"
                    },
                    {
                        "name": "rawError",
                        "value": "Run Intune enrollment extension failed."
                    }
                ]
            },
            "partnerAgentInstallResults": []
        },
        {
            "id": "69621742-aad4-4976-990c-d10ff6d73fc1",
            "displayName": "TestSweden - Akhilesh Khare",
            "imageDisplayName": "TestSweden",
            "provisioningPolicyId": "5865dd09-797d-4885-85ab-bb96594b5f1b",
            "provisioningPolicyName": "TestSweden",
            "onPremisesConnectionName": "TestSweden",
            "servicePlanId": "0e837228-8250-4047-8a80-d4a34ba11618",
            "servicePlanName": "Cloud PC Enterprise 8vCPU/32GB/512GB",
            "status": "failed",
            "userPrincipalName": "akhkhare_contoso.com#EXT#@fabrikam.onmicrosoft.com",
            "lastModifiedDateTime": "2023-04-25T06:12:10Z",
            "managedDeviceId": null,
            "managedDeviceName": null,
            "aadDeviceId": null,
            "gracePeriodEndDateTime": null,
            "servicePlanType": "enterprise",
            "diskEncryptionState": "notAvailable",
            "provisioningType": "dedicated",
            "statusDetails": {
                "code": "intuneEnrollFailed",
                "message": "We can’t complete MEM enrollment of this Cloud PC. Check MEM policy settings and retry. If that doesn’t work, contact Customer support.",
                "additionalInformation": [
                    {
                        "name": "retriable",
                        "value": "true"
                    },
                    {
                        "name": "failedAction",
                        "value": "Provision"
                    },
                    {
                        "name": "rawError",
                        "value": "Run Intune enrollment extension failed."
                    }
                ]
            },
            "partnerAgentInstallResults": []
        }
    ]
}
```

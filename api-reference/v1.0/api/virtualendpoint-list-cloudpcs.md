---
title: "List cloudPCs"
description: "List the cloudPC devices in a tenant."
author: "xhhzuikeaiya"
ms.localizationpriority: medium
ms.subservice: "cloud-pc"
doc_type: apiPageType
---

# List cloudPCs

Namespace: microsoft.graph

List the [cloudPC](../resources/cloudpc.md) devices in a tenant.

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- { "blockType": "permissions", "name": "virtualendpoint_list_cloudpcs" } -->
[!INCLUDE [permissions-table](../includes/permissions/virtualendpoint-list-cloudpcs-permissions.md)]

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->

``` http
GET /deviceManagement/virtualEndpoint/cloudPCs
```

## Optional query parameters

This method supports the `$select`, `$filter`, `$count`, and `$top` OData query parameters to help customize the response. For general information, see [OData query parameters](/graph/query-parameters).

## Request headers

| Name          | Description               |
| :------------ | :------------------------ |
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|

## Request body

Don't supply a request body for this method.

## Response

If successful, this method returns a `200 OK` response code and a collection of [cloudPC](../resources/cloudpc.md) objects in the response body.

## Examples

### Example 1: List all cloudPC devices in a tenant

The following example shows how to get a list of all [cloudPC](../resources/cloudpc.md) devices in a tenant.

#### Request

The following example shows a request.

<!-- {
  "blockType": "request",
  "name": "list_cloudpcs"
}
-->

``` http
GET https://graph.microsoft.com/v1.0/deviceManagement/virtualEndpoint/cloudPCs
```

#### Response

The following example shows the response.

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
      "userPrincipalName": "dujanjic@contoso.com",
      "lastModifiedDateTime": "2020-11-03T10:29:57Z",
      "gracePeriodEndDateTime": "2020-11-010T20:00:34Z",
      "provisioningType": "dedicated"
    }
  ]
}
```

### Example 2: Get the top two cloudPC devices in a tenant

The following example shows how to use the `$top` query parameter to get the top two [cloudPC](../resources/cloudpc.md) devices in a tenant.

#### Request

The following example shows a request.

<!-- {
  "blockType": "request",
  "name": "list_cloudpcs_with_top_query"
}
-->

``` http
GET https://graph.microsoft.com/v1.0/deviceManagement/virtualEndpoint/cloudPCs?$top=2
```

#### Response

The following example shows the response.

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
    "@odata.context": "https://canary.graph.microsoft.com/v1.0/$metadata#deviceManagement/virtualEndpoint/cloudPCs",
    "@odata.count": 200,
    "@odata.nextLink": "https://canary.graph.microsoft.com/v1.0/deviceManagement/virtualEndpoint/cloudPCs?$top=2&$skiptoken=7d4e1527-fe5a-4d86-81eb-2c532ac567ce",
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
            "userPrincipalName": "RMS-Resize-user-05@contoso.com",
            "lastModifiedDateTime": "2023-04-25T06:24:02Z",
            "managedDeviceId": null,
            "managedDeviceName": null,
            "aadDeviceId": null,
            "gracePeriodEndDateTime": null,
            "provisioningType": "dedicated"
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
            "userPrincipalName": "akhkhare_contoso.com#EXT#@contoso.com",
            "lastModifiedDateTime": "2023-04-25T06:12:10Z",
            "managedDeviceId": null,
            "managedDeviceName": null,
            "aadDeviceId": null,
            "gracePeriodEndDateTime": null,
            "provisioningType": "dedicated"
        }
    ]
}
```

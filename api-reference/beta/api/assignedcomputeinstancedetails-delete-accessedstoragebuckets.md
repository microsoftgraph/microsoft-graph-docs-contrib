---
title: "Delete authorizationSystemResource"
description: "Delete an authorizationSystemResource object."
author: "**TODO: Provide Github Name."
ms.localizationpriority: medium
ms.prod: "**TODO: Add MS prod. See [topic-level metadata reference](https://aka.ms/msgo?pagePath=Document-APIs/Guidelines/Metadata)**"
doc_type: apiPageType
---

# Delete authorizationSystemResource
Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Delete an [authorizationSystemResource](../resources/authorizationsystemresource.md) object.

## Permissions
One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

|Permission type|Permissions (from least to most privileged)|
|:---|:---|
|Delegated (work or school account)|**TODO: Provide applicable permissions.**|
|Delegated (personal Microsoft account)|**TODO: Provide applicable permissions.**|
|Application|**TODO: Provide applicable permissions.**|

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
DELETE /authorizationSystemResource/$ref
DELETE /encryptedAwsStorageBucketFinding/storageBucket/$ref
DELETE /encryptedGcpStorageBucketFinding/storageBucket/$ref
DELETE /encryptedAzureStorageAccountFinding/storageAccount/$ref
DELETE /openNetworkAzureSecurityGroupFinding/securityGroup/$ref
DELETE /externallyAccessibleAwsStorageBucketFinding/storageBucket/$ref
DELETE /externallyAccessibleGcpStorageBucketFinding/storageBucket/$ref
DELETE /virtualMachineWithAwsStorageBucketAccessFinding/ec2Instance/$ref
DELETE /externallyAccessibleAzureBlobContainerFinding/storageAccount/$ref
DELETE /privilegeEscalation/resources/{authorizationSystemResourceId}/$ref
DELETE /openNetworkAzureSecurityGroupFinding/virtualMachines/{authorizationSystemResourceId}/$ref
```

## Request headers
|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required.|

## Request body
Do not supply a request body for this method.

## Response

If successful, this method returns a `204 No Content` response code.

## Examples

### Request
The following is an example of a request.
<!-- {
  "blockType": "request",
  "name": "delete_authorizationsystemresource"
}
-->
``` http
DELETE https://graph.microsoft.com/beta/authorizationSystemResource
```


### Response
The following is an example of the response
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true
}
-->
``` http
HTTP/1.1 204 No Content
```


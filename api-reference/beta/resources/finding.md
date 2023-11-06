---
title: "finding resource type"
description: "A finding is the output of the usage data analysis performed by Permissions Management to assess risk with identities and resources."
author: "ashyasingh"
ms.localizationpriority: medium
ms.prod: "multicloud-permissions-management"
doc_type: resourcePageType
---

# finding resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

A finding is the output of the usage data analysis performed by Permissions Management to assess risk with identities and resources.

Inherits from [entity](../resources/entity.md).

The following resources inherit from this resource type:
[identityfinding](../resources/identityfinding.md)

[awsExternalSystemAccessFinding](../resources/awsexternalsystemaccessfinding.md)
[awsExternalSystemAccessRoleFinding](../resources/awsexternalsystemaccessrolefinding.md)

[awsIdentityAccessManagementKeyAgeFinding](../resources/awsidentityaccessmanagementkeyagefinding.md)
[awsIdentityAccessManagementKeyUsgeFinding](../resources/awsidentityaccessmanagementkeyusagefinding.md)

[awsSecretInformationAccessFinding](../resources/awssecretinformationaccessfinding.md)
[awsSecurityToolAdministrationFinding](../resources/awssecuritytooladministrationfinding.md)

[encryptedAwsStorageBucketFinding](../resources/encryptedawsstoragebucketfinding.md)
[encryptedAzureStorageAccountFinding](../resources/encryptedazurestorageaccountfinding.md)
[encryptedGcpStorageBucketFinding](../resources/encryptedgcpstoragebucketfinding.md)

[externallyAccessibleAwsStorageBucketFinding](../resources/externallyaccessibleawsstoragebucketfinding.md)
[externallyAccessibleAzureBlobContainerFinding](../resources/externallyaccessibleazureblobcontainerfinding.md)
[externallyAccessibleGcpStorageBucketFinding](../resources/externallyaccessiblegcpstoragebucketfinding.md)

[inactiveGroupFinding](../resources/inactivegroupfinding.md)

[openAwsSecurityGroupFinding](../resources/openawssecuritygroupfinding.md)
[openNetworkAzureSecurityGroupFinding](../resources/opennetworkazuresecuritygroupfinding.md)

[privilegeEscalationFinding](../resources/privilegeescalationfinding.md)

[virtualMachineWithAwsStorageBucketAccessFinding](../resources/virtualmachinewithawsstoragebucketaccessfinding.md)


## Methods
None

## Properties
|Property|Type|Description|
|:---|:---|:---|
|createdDateTime|DateTimeOffset|A date specifiying when the Finding was created|
|id|String|Unique identifier for the Finding. This id will be base64 encoded using the format:{findingType}{FindingId} to ensure uniquenessInherited from [entity](../resources/entity.md).|

## Relationships
None.

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.finding",
  "baseType": "microsoft.graph.entity",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.finding",
  "id": "String (identifier)",
  "createdDateTime": "String (timestamp)"
}
```


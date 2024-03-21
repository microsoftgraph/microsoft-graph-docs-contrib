---
title: "servicePrincipalLockConfiguration resource type"
description: "Specifies the sensitive properties of the app that are locked for editing on the service principal. You can disable this configuration to allow the properties to be updated."
ms.localizationpriority: medium
doc_type: resourcePageType
ms.subservice: "entra-applications"
author: "madansr7"
---

# servicePrincipalLockConfiguration resource type

Namespace: microsoft.graph

Specifies the sensitive properties of the app that are locked for editing on the service principal. You can disable this configuration to allow the properties to be updated.

For more information about managing this object, see [Lock sensitive properties for service principals](/graph/tutorial-applications-basics#lock-sensitive-properties-for-service-principals)


## Properties

| Property | Type | Description |
|:---------------|:--------|:----------|
| isEnabled                  | Boolean | Enables or disables service principal lock configuration. To allow the sensitive properties to be updated, update this property to `false` to disable the lock on the service principal. | 
| allProperties              | Boolean | Enables locking all sensitive properties. The sensitive properties are **keyCredentials**, **passwordCredentials**, and **tokenEncryptionKeyId**.                                                                                                           |
| credentialsWithUsageVerify | Boolean | Locks the keyCredentials and passwordCredentials properties for modification where credential **usage** type is `Verify`. This locks OAuth service principals.                                                   |
| credentialsWithUsageSign   | Boolean | Locks the keyCredentials and passwordCredentials properties for modification where credential **usage** type is `Sign`.                                                                 |
| tokenEncryptionKeyId       | Boolean | Locks the tokenEncryptionKeyId property for modification on the service principal.                                                                            |

## JSON representation
Here is a JSON representation of the resource.

<!-- {
  "blockType": "resource",
  "optionalProperties": [

  ],
  "@odata.type": "microsoft.graph.servicePrincipalLockConfiguration"
}-->

```json
{
   "@odata.type": "#microsoft.graph.servicePrincipalLockConfiguration",
   "isEnabled": "Boolean",
   "allProperties": "Boolean",
   "credentialsWithUsageVerify": "Boolean",
   "credentialsWithUsageSign": "Boolean",
   "tokenEncryptionKeyId": "Boolean"
}
```


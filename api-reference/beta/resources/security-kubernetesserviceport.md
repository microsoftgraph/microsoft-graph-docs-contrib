---
title: "kubernetesServicePort resource type"
description: "KubernetesServicePort object reported as part of a KubernetesServiceEvidence entity"
author: "MSRonBorysowski"
ms.localizationpriority: medium
ms.prod: "security"
doc_type: resourcePageType
---

# kubernetesServicePort resource type

Namespace: microsoft.graph.security

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

KubernetesServicePort object reported as part of a [microsoft.graph.security.kubernetesServiceEvidence](./security-kubernetesserviceevidence.md) entity.


## Properties

|Property|Type|Description|
|:---|:---|:---|
|appProtocol|String|The application protocol for this port.|
|name|String|The name of this port within the service.|
|nodePort|Int32|The port on each node on which this service is exposed when type is NodePort or LoadBalancer.|
|port|Int32|The port that will be exposed by this service.|
|protocol|String| Protocol name.|
|targetPort|Untyped JSON object|Number or name of the port to access on the pods targeted by the service. Number must be in the range 1 to 65535. Name must be an IANA_SVC_NAME. Value can be either int or string according to Kubernetes specification.|


## Relationships

None.

## JSON representation

The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.security.kubernetesServicePort"
}
-->
``` json
{
    "@odata.type": "#microsoft.graph.security.kubernetesServicePort",
    "appProtocol": "String",
    "name": "String",
    "nodePort": "Integer",
    "port": "Integer",
    "protocol": "String",
    "targetPort": {
        "@odata.type": "microsoft.graph.Json"
    }
}
```

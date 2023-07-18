---
title: "kubernetesServicePort resource type"
description: "Represents a Kubernetes service port object that is reported as part of a kubernetesServiceEvidence entity."
author: "MSRonBorysowski"
ms.localizationpriority: medium
ms.prod: "security"
doc_type: resourcePageType
---

# kubernetesServicePort resource type

Namespace: microsoft.graph.security

Represents a Kubernetes service port object that is reported as part of a [microsoft.graph.security.kubernetesServiceEvidence](./security-kubernetesserviceevidence.md) entity.


## Properties

| Property    | Type                                                                            | Description                                                                                                                                                             |
|:------------|:--------------------------------------------------------------------------------|:------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
| appProtocol | String                                                                          | The application protocol for this port.                                                                                                                                 |
| name        | String                                                                          | The name of this port within the service.                                                                                                                               |
| nodePort    | Int32                                                                           | The port on each node on which this service is exposed when the type is either `NodePort` or `LoadBalancer`.                                                            |
| port        | Int32                                                                           | The port that this service exposes.                                                                                                                                     |
| protocol    | [microsoft.graph.security.containerPortProtocol](#containerportprotocol-values) | The protocol name. Possible values are: `udp`, `tcp`, `sctp`, `unknownFutureValue`.                                                                                     |
| targetPort  | String                                                                          | The name or number of the port to access on the pods targeted by the service. The port number must be in the range `1` to `65535`. The name must be an `IANA_SVC_NAME`. |

### containerPortProtocol values

| Member             | Description                                       |
|:-------------------|:--------------------------------------------------|
| udp                | User Datagram Protocol.                           |
| tcp                | Transmission Control Protocol.                    |
| sctp               | Stream Control Transmission Protocol.             |
| unknownFutureValue | Evolvable enumeration sentinel value. Do not use. |

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
    "nodePort": "Int32",
    "port": "Int32",
    "protocol": "String",
    "targetPort": "String"
}
```

---
title: "Environment Kind enum values"
description: "Environment kind enumeration values"
author: "Yarinle4"
ms.date: 11/26/2025
ms.localizationpriority: medium
ms.subservice: "security"
doc_type: enumTypes
---

# Microsoft Graph security enumeration values

Namespace: microsoft.graph.security

### environmentKind values 



| Member                  | Environment Kind          | ID Format                     | Example                                   |
|-------------------------|----------------------------|-------------------------------|-------------------------------------------|
| azureSubscription       | AzureSubscription          | `{guid}`                      | 18d1c06d-520b-46d1-b309-be218fbc811e      |
| awsOrganization         | AwsOrganization            | Numeric string                | 181994123251                              |
| awsAccount              | AwsAccount                 | Numeric string                | 181994123251                              |
| gcpOrganization         | GcpOrganization            | Numeric string                | 69483221284                               |
| gcpProject              | GcpProject                 | Numeric string                | 69483221284                               |
| dockersHubOrganization  | DockersHubOrganization     | String (organization name)    | my-docker-org                             |
| devOpsConnection        | DevOpsConnection           | String (resource identifier)  | my-ado-connection                          |
| azureDevOpsOrganization | AzureDevOpsOrganization    | `{guid}`                      | 3f5493e6-8aba-485d-9120-c881b1322b52      |
| gitHubOrganization      | GitHubOrganization         | Numeric string (org ID)       | 48028332                                  |
| gitLabGroup             | GitLabGroup                | Numeric string (group ID)     | 12548733                                  |
| jFrogArtifactory        | JFrogArtifactory           | String (organization name)    | my-artifactory-org                        |
| unknownFutureValue      | unknownFutureValue         | -                | -                           |


<!-- {
  "type": "#page.annotation",
  "namespace": "microsoft.graph.security"
}
-->

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


| Member                  | Environment Kind           | Identifier Type Format                                          | Example                                                                                                                                   |
|-------------------------|-----------------------------|------------------------------------------------------------------|-------------------------------------------------------------------------------------------------------------------------------------------|
| azureSubscription       | AzureSubscription           | Resource ID of a subscription                                    | /subscriptions/03e34771-839c-40e0-89f4-01f2e6ced082                                                                                       |
| awsOrganization         | AwsManagementAccount        | Numeric value of an AWS account ID                               | 12037495                                                                                                                                  |
| awsAccount              | AwsAccount                  | Numeric value of an AWS account ID                               | 12037495                                                                                                                                  |
| gcpOrganization         | GcpOrganization             | Numeric value of a GCP organization ID                           | 548374839182756832                                                                                                                       |
| gcpProject              | GcpProject                  | Numeric value of a GCP project (Project Number)                  | 548374839182756832                                                                                                                       |
| dockersHubOrganization  | DockersHubOrganization      | DockerHub organization name                                      | Adfehfh5732jfgjg                                                                                                                          |
| devOpsConnection        | DevOpsConnection            | GUID **or** Azure Resource ID of a DevOps security connector     | 3353810e-f85f-4d0a-8377-ad8180edb8d2<br>/subscriptions/31d30e45-c89d-4e69-b85e-aada1da04075/resourcegroups/dfd-annotations-cloudtest/providers/Microsoft.Security/securityconnectors/dfdar-df-ct-scus |
| azureDevOpsOrganization | AzureDevOpsOrganization     | GUID (unique ID of the Azure DevOps organization)                | 3f5493e6-8aba-485d-9120-c881b1322b52                                                                                                      |
| gitHubOrganization      | GitHubOrganization          | GitHub organization ID                                           | 48028332                                                                                                                                  |
| gitLabGroup             | GitLabGroup                 | GitLab group ID                                                  | 70868764                                                                                                                                  |
| jFrogArtifactory        | JFrogArtifactory            | Artifactory ID (^[a-zA-Z][a-zA-Z0-9]{2,31}$)                     | Artifactory123                                                                                                                           |
| unknownFutureValue      | unknownFutureValue          | -                                                    | -


<!-- {
  "type": "#page.annotation",
  "namespace": "microsoft.graph.security"
}
-->

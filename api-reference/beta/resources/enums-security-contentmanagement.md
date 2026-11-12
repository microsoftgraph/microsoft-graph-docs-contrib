---
title: "Security.content management enum values"
description: "Enumeration values for Microsoft Graph security content management repositories."
author: "AlexBrohshtut"
ms.date: 10/29/2026
ms.localizationpriority: medium
ms.subservice: "security"
doc_type: enumTypes
---

# Microsoft Graph security.contentManagement enumeration values

Namespace: microsoft.graph.security.contentManagement

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

### deploymentScopeType values

|Member|
|:---|
|resourceGroup|
|managementGroup|
|unknownFutureValue|

### repositoryContentType values

|Member|
|:---|
|customDetection|
|unknownFutureValue|
|defenderWorkbook|

### repositoryDeploymentFetchStatus values

|Member|
|:---|
|success|
|unauthorized|
|notFound|
|unknownFutureValue|
|unavailable|

### repositoryDeploymentResult values

|Member|
|:---|
|success|
|canceled|
|failed|
|unknownFutureValue|
|pending|

### repositoryDeploymentState values

|Member|
|:---|
|inProgress|
|completed|
|queued|
|canceling|
|unknownFutureValue|

### repositoryPullRequestState values

|Member|
|:---|
|open|
|closed|
|unknownFutureValue|
|merged|

### repositoryType values

|Member|
|:---|
|gitHub|
|azureDevOps|
|unknownFutureValue|

<!-- { "type": "#page.annotation", "namespace": "microsoft.graph.security.contentManagement" } -->

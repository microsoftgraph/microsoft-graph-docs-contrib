---
title: "alertEvidence resource type"
description: "Represents evidence related to an alert."
author: "BenAlfasi"
ms.localizationpriority: medium
ms.prod: "security"
doc_type: resourcePageType
---

# alertEvidence resource type

Namespace: microsoft.graph.security

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents evidence related to an [alert](security-alert.md).

The **alertEvidence** base type and its derived evidence types provide a means to organize and track rich data about each artifact involved in an **alert**. For example, an **alert** about an attacker's IP address signing in to a cloud service using a compromised user account can track the following evidence:
- [IP evidence](security-ipevidence.md) with the roles of `attacker` and `source`, remediation status of `running`, and verdict of `malicious`.
- [Cloud application evidence](security-cloudapplicationevidence.md) with a role of `contextual`.
- [Mailbox evidence](security-mailboxevidence.md) for the hacked user account with a role of `compromised`.

This resource is the base type for the following evidence types: 
* [amazonResourceEvidence](security-amazonresourceevidence.md)
* [analyzedMessageEvidence](security-analyzedmessageevidence.md)
* [azureResourceEvidence](security-azureresourceevidence.md)
* [blobContainerEvidence](security-blobcontainerevidence.md)
* [blobEvidence](security-blobevidence.md)
* [cloudApplicationEvidence](security-cloudapplicationevidence.md)
* [containerEvidence](security-containerevidence.md)
* [containerImageEvidence](security-containerimageevidence.md)
* [containerRegistryEvidence](security-containerregistryevidence.md)
* [deviceEvidence](security-deviceevidence.md)
* [fileEvidence](security-fileevidence.md)
* [googleCloudResourceEvidence](security-googlecloudresourceevidence.md)
* [ipEvidence](security-ipevidence.md)
* [kubernetesClusterEvidence](security-kubernetesclusterevidence.md)
* [kubernetesControllerEvidence](security-kubernetescontrollerevidence.md)
* [kubernetesNamespaceEvidence](security-kubernetesnamespaceevidence.md)
* [kubernetesPodEvidence](security-kubernetespodevidence.md)
* [kubernetesSecretEvidence](security-kubernetessecretevidence.md)
* [kubernetesServiceEvidence](security-kubernetesserviceevidence.md)
* [kubernetesServiceAccountEvidence](security-kubernetesserviceaccountevidence.md)
* [mailClusterEvidence](security-mailclusterevidence.md)
* [mailboxEvidence](security-mailboxevidence.md)
* [oauthApplicationEvidence](security-oauthapplicationevidence.md)
* [processEvidence](security-processevidence.md)
* [registryKeyEvidence](security-registrykeyevidence.md)
* [registryValueEvidence](security-registryvalueevidence.md)
* [securityGroupEvidence](security-securitygroupevidence.md)
* [urlEvidence](security-urlevidence.md)
* [userEvidence](security-userevidence.md)

## Properties

|Property|Type|Description|
|:---|:---|:---|
|createdDateTime|DateTimeOffset|The date and time when the evidence was created and added to the alert. The Timestamp type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 is `2014-01-01T00:00:00Z`. |
|remediationStatus|[microsoft.graph.security.evidenceRemediationStatus](#evidenceremediationstatus-values)|Status of the remediation action taken. The possible values are: `none`, `remediated`, `prevented`, `blocked`, `notFound`, `unknownFutureValue`.|
|remediationStatusDetails|String|Details about the remediation status.|
|roles|[microsoft.graph.security.evidenceRole](#evidencerole-values) collection|One or more roles that an evidence entity represents in an alert. For example, an IP address that is associated with an attacker has the evidence role `Attacker`. Possible values are: `unknown`, `contextual`, `scanned`, `source`, `destination`, `created`, `added`, `compromised`, `edited`, `attacked`, `attacker`, `commandAndControl`, `loaded`, `suspicious`, `policyViolator`, `unknownFutureValue`.|
|tags|String collection|Array of custom tags associated with an evidence instance. For example, to denote a group of devices or high value assets.|
|verdict|[microsoft.graph.security.evidenceVerdict](#evidenceverdict-values)|The decision reached by automated investigation. The possible values are: `unknown`, `suspicious`, `malicious`, `noThreatsFound`, `unknownFutureValue`.|


### detectionSource values 

| Value                        | Description                                                                |
| :----------------------------| :--------------------------------------------------------------------------|
| detected                     | A product of the threat that executed was detected.                        |
| blocked                      | The threat was remediated at run time.                                     |
| prevented                    | The threat was prevented from occurring (running, downloading, and so on.).|
| unknownFutureValue           | Evolvable enumeration sentinel value. Do not use.                          |


### evidenceRemediationStatus values 

| Member                     | Description                                    |
| :--------------------------| :--------------------------------------------- |
| none                       | No threats were found.                         |
| remediated                 | Remediation action has completed successfully. |
| prevented                  | The threat was prevented from executing.       |
| blocked                    | The threat was blocked while executing.        |
| notFound                   | The evidence was not found.                    |
| unknownFutureValue         | Evolvable enumeration sentinel value. Do not use.  |


### evidenceRole values 

| Member                     | Description                                                                                                                                                          |
| :--------------------------| :------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| unknown                    | The evidence role is unknown.                                                                                                                                        |
| contextual                 | An entity that arose likely benign but was reported as a side effect of an attacker's action, e.g. the benign services.exe process was used to start a malicious service.|
| scanned                    | An entity identified as a target of discovery scanning or reconnaissance actions, e.g. a port scanner was used to scan a network.                                    |
| source                     | The entity the activity originated from, e.g. device, user, IP address, etc.                                                                                         |
| destination                | The entity the activity was sent to, e.g. device, user, IP address, etc.                                                                                             |
| created                    | The entity was created as a result of the actions of an attacker, e.g. a user account was created.                                                                   |
| added                      | The entity was added as a result of the actions of an attacker, e.g. a user account was added to a permissions group.                                                |
| compromised                | The entity was compromised and is under the control of an attacker, e.g. a user account was compromised and used to log into a cloud service.                        |
| edited                     | The entity was edited or changed by an attacker, e.g. the registry key for a service was edited to point to the location of a new malicious payload.                 |
| attacked                   | The entity was attacked, e.g. a device was targeted in a DDoS attack.                                                                                                |
| attacker                   | The entity represents the attacker, e.g. the attacker`s IP address observed logging into a cloud service using a compromised user account.                           |
| commandAndControl          | The entity is being used for command and control, e.g. a C2 (command and control) domain used by malware.                                                            |
| loaded                     | The entity was loaded by a process under the control of an attacker, e.g. a Dll was loaded into an attacker-controlled process.                                      |
| suspicious                 | The entity is suspected of being malicious or controlled by an attacker but has not been incriminated.                                                               |
| policyViolator             | The entity is a violator of a customer defined policy.                                                                                                               |
| unknownFutureValue         | Evolvable enumeration sentinel value. Do not use.  |


### evidenceRemediationStatus values 

| Member                     | Description                                       |
| :--------------------------| :------------------------------------------------ |
| unknown                    | No verdict was determined for the evidence.        |
| suspicious                 | Recommended remediation actions awaiting approval.|
| malicious                  | The evidence was determined to be malicious.      |
| clean                      | No threat was detected - the evidence is benign.  |
| unknownFutureValue         | Evolvable enumeration sentinel value. Do not use.  |


### evidenceVerdict values 

| Member                     | Description                                       |
| :--------------------------| :------------------------------------------------ |
| unknown                    | No verdict was determined for the evidence.|
| suspicious                 | Recommended remediation actions awaiting approval.|
| malicious                  | The evidence was determined to be malicious. |
| noThreatsFound             | No threat was detected - the evidence is benign.  |
| unknownFutureValue         | Evolvable enumeration sentinel value. Do not use.  |


## Relationships
None.

## JSON representation
The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.security.alertEvidence"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.security.alertEvidence",
  "createdDateTime": "String (timestamp)",
  "verdict": "String",
  "remediationStatus": "String",
  "remediationStatusDetails": "String",
  "roles": [
    "String"
  ],
  "tags": [
    "String"
  ]
}
```

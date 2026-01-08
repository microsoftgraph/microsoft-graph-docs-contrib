---
title: "External connectors enum values"
description: "Microsoft Graph external connectors enumeration values"
doc_type: enumPageType
ms.localizationpriority: medium
ms.subservice: "search"
ms.author: "emzho"
author: "emzho"
ms.date: 03/06/2024
---

# External connectors enum values

Namespace: microsoft.graph.externalConnectors

### accessType values

| Member
|:--------------
| grant
| deny
| unknownFutureValue

### aclType values

| Member
|:--------------
| user
| group
| everyone
| everyoneExceptGuests
| externalGroup
| unknownFutureValue

### connectionOperationStatus values

| Member
|:--------------
| unspecified
| inprogress
| completed
| failed
| unknownFutureValue

### connectionState values

| Member
|:--------------
| draft
| ready
| obsolete
| limitExceeded
| unknownFutureValue

### contentCategory values

| Member
|:----------
| uncategorized
| knowledgeBase
| wikis
| fileRepository
| qna
| crm
| dashboard
| people
| media
| email
| messaging
| meetingTranscripts
| taskManagement
| learningManagement
| unknownFutureValue

### contentExperienceType values

| Member
|:--------------
| search
| compliance
| unknownFutureValue

### externalActivityType values

| Member             |
|:-------------------|
| viewed             |
| modified           |
| created            |
| commented          |
| unknownFutureValue |

### externalGroupMemberType values

| Member
|:--------------
| user
| group
| unknownFutureValue

### externalItemContentType values

| Member
|:--------------
| text
| html
| unknownFutureValue

### identitySourceType values

| Member
|:--------------
| azureActiveDirectory
| external

### identityType values

| Member
|:--------------
| user
| group
| externalGroup
| unknownFutureValue

### importanceScore values

| Member
|:--------------
| low
| medium
| high
| veryHigh
| unknownFutureValue

### label values

| Member
|:--------------
| title
| url
| createdBy
| lastModifiedBy
| authors
| createdDateTime
| lastModifiedDateTime
| fileName
| fileExtension
| unknownFutureValue
| iconUrl
| containerName
| containerUrl
| personEmails
| personAddresses
| personAnniversaries
| personName
| personNote
| personPhones
| personCurrentPosition
| personWebAccounts
| personWebSite
| personSkills
| personProjects
| personAccount
| personAwards
| personCertifications
| personAssistants
| personColleagues
| personManager
| personAlternateContacts
| personEmergencyContacts


### propertyType values

| Member
|:--------------
| string
| int64
| double
| dateTime
| boolean
| stringCollection
| int64Collection
| doubleCollection
| dateTimeCollection
| principal
| unknownFutureValue

### ruleOperation values

|Member|
|:---|
|null|
|equals|
|notEquals|
|contains|
|notContains|
|lessThan|
|greaterThan|
|startsWith|
|unknownFutureValue|

<!--
{
  "type": "#page.annotation",
  "namespace": "microsoft.graph.externalConnectors"
}
-->

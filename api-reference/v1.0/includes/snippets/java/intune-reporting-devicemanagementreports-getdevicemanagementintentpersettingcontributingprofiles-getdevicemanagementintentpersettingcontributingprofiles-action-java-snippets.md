---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

com.microsoft.graph.devicemanagement.reports.getdevicemanagementintentpersettingcontributingprofiles.GetDeviceManagementIntentPerSettingContributingProfilesPostRequestBody getDeviceManagementIntentPerSettingContributingProfilesPostRequestBody = new com.microsoft.graph.devicemanagement.reports.getdevicemanagementintentpersettingcontributingprofiles.GetDeviceManagementIntentPerSettingContributingProfilesPostRequestBody();
getDeviceManagementIntentPerSettingContributingProfilesPostRequestBody.setName("Name value");
LinkedList<String> select = new LinkedList<String>();
select.add("Select value");
getDeviceManagementIntentPerSettingContributingProfilesPostRequestBody.setSelect(select);
getDeviceManagementIntentPerSettingContributingProfilesPostRequestBody.setSearch("Search value");
LinkedList<String> groupBy = new LinkedList<String>();
groupBy.add("Group By value");
getDeviceManagementIntentPerSettingContributingProfilesPostRequestBody.setGroupBy(groupBy);
LinkedList<String> orderBy = new LinkedList<String>();
orderBy.add("Order By value");
getDeviceManagementIntentPerSettingContributingProfilesPostRequestBody.setOrderBy(orderBy);
getDeviceManagementIntentPerSettingContributingProfilesPostRequestBody.setSkip(4);
getDeviceManagementIntentPerSettingContributingProfilesPostRequestBody.setTop(3);
getDeviceManagementIntentPerSettingContributingProfilesPostRequestBody.setSessionId("Session Id value");
getDeviceManagementIntentPerSettingContributingProfilesPostRequestBody.setFilter("Filter value");
graphClient.deviceManagement().reports().getDeviceManagementIntentPerSettingContributingProfiles().post(getDeviceManagementIntentPerSettingContributingProfilesPostRequestBody);


```
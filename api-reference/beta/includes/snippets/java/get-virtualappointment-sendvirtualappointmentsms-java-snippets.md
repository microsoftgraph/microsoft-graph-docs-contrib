---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

com.microsoft.graph.beta.users.item.onlinemeetings.item.sendvirtualappointmentsms.SendVirtualAppointmentSmsPostRequestBody sendVirtualAppointmentSmsPostRequestBody = new com.microsoft.graph.beta.users.item.onlinemeetings.item.sendvirtualappointmentsms.SendVirtualAppointmentSmsPostRequestBody();
HashMap<String, Object> additionalData = new HashMap<String, Object>();
LinkedList<String> phoneNumbers = new LinkedList<String>();
phoneNumbers.add("+13129224122");
phoneNumbers.add("+1242421412");
additionalData.put("phoneNumbers", phoneNumbers);
additionalData.put("virtualAppointmentSmsType", "confirmation");
sendVirtualAppointmentSmsPostRequestBody.setAdditionalData(additionalData);
graphClient.me().onlineMeetings().byOnlineMeetingId("{onlineMeeting-id}").sendVirtualAppointmentSms().post(sendVirtualAppointmentSmsPostRequestBody);


```
# Outlook To-do tasks API overview (preview)

Outlook tasks is a simple task manager feature of the Outlook web and desktop clients. Outlook tasks lets customers track their tasks in the same client that they use to manage email and their calendars. The integration with Outlook provides popular Outlook features such as forwarding, attaching files, Outlook messages, and calendar items. tasks can be assigned to other Outlook users in the same way mail can be sent to other Outlook users and event invitations can be sent to Outlook Users. tasks can be organized into folders and folders can be organized in groups. tasks are integrated with OneNote to let a customer keep an extensive and rich set of task-specific content in one place. All of these task features are available on the tasks tab of the Outlook Client.

## Why integrate with Outlook To-do tasks?

By integrating your apps with Outlook tasks, you can create empowering experiences across multiple platforms that reach millions of users worldwide. You can use Microsoft Graph to access tasks, task attachments, task folders, and task groups to create solutions that help your users track their daily tasks and even automate the creation, update and completion of tasks. With well designed task automation, you can give users all of the benefits of task tracking while insuring that your organization's work flow is automatically tracked in user tasks.

### Automate the creation of tasks

If your line-of-business application generates the work flow that directs users in their work, you can extend the application to create a task for each stage of the workflow and assign the task to a user along with task details, start dates, expected work effort, priority, associated customers, and recurrence. The new task appears in the assigned user's task list. 

### Automate task updates

If your application creates a task for a user, it can also automate the update of a task as work progresses on the task. The user can update the task within the Outlook client or your application can automate the update of the task - as long as the assigned user works in your application in the context of the task. Hours worked on the task can be updated, the status, and the completion date can be updated. The Microsoft Graph Outlook tasks API gives access to the details of the task so your app can even add additional notes to the task as appropriate. 

### Extend task properties

Microsoft Graph is designed to account for the unique task management requirements of any organization. For example, your organization may require a structured set of task details in all new tasks. Use the [openTypeExtension](../api-reference/beta/resources/opentypeextension.md) to access this flexibility for the most common customizations. If your organization needs to extend tasks in a way that is not supported by **openTypeExtension**, you can use a [singleValueLegacyExtendedProperty](../api-reference/beta/resources/singlevaluelegacyextendedproperty.md) or a [multiValueExtendedPropety](../api-reference/beta/resources/multivaluelegacyextendedproperty.md).

Learn more about [adding custom data to resources using extensions](extensibility_overview.md) and how extensions are implemented as [Outlook extended properties](../api-reference/beta/resources/extended-properties-overview.md).

### Automate task organization

As your organization starts new projects or takes on new clients, use Microsoft Graph to create [task folders](../api-reference/beta/resources/outlooktaskfolder.md) and [task groups](../api-reference/beta/resources/outlooktaskgroup.md) to organize tasks by project or customer... or any other logical entity that your organization works with. Once you've created a task group and folder, you can use Microsoft Graph to create tasks in the new folder.

### Report on task progress across your organization

Use Microsoft Graph Outlook tasks API to capture information about the current state of all Outlook tasks that your application has permission to read. You can create reports in any report generation application that can be extended to connect to Microsoft Graph. Use the [OutlookTask](../api-reference/beta/resources/outlooktask.md) resource to get progress information about each task.

### Relationship of tasks to other Microsoft Office 365 Portal apps

When your app creates a task with the Microsoft Graph API, it is available to the assigned user through the **Outlook** client tasks tab. The [Microsoft Office 365 Portal](https://www.office.com/) apps including [Outlook](https://outlook.office365.com), [tasks](https://outlook.office365.com/owa/?realm=microsoft.com&modurl=3&exsvurl=1&ll-cc=1033&path=/tasks), and [To-Do](https://to-do.microsoft.com) give the user access to tasks. These apps give users different views of task data and expose different functionality. For example, if a user wants to forward a task to another user, she must open the task in **Outlook**. If a user wants to add sub-steps to a task, he must open the task in the **To-Do** app. 

Microsoft Graph exposes task properties that can be updated in Outlook. It does not support the functionality available in **To-Do**. The task forwarding feature can be reproduced in your app but you must [create a mail message](../api-reference/beta/api/user_post_messages.md), [add the task as an attachment](../api-reference/beta/api/message_post_attachments.md) and then [send the mail message](../api-reference/beta/api/user_sendmail.md) 

## Next steps

Learn about:

- [OutlookTask](../api-reference/beta/resources/outlooktask.md) resources
- [Outlook task folders](../api-reference/beta/resources/outlooktaskfolder.md)
- How to [create Outlook tasks](../api-reference/beta/api/outlooktaskfolder_post_tasks.md)
- How to [update an Outlook task](../api-reference/beta/api/outlooktask_update.md)


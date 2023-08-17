# This file is auto-generated by AWSMetadata.jl
using AWS
using AWS.AWSServices: scheduler
using AWS.Compat
using AWS.UUIDs

"""
    create_schedule(flexible_time_window, name, schedule_expression, target)
    create_schedule(flexible_time_window, name, schedule_expression, target, params::Dict{String,<:Any})

Creates the specified schedule.

# Arguments
- `flexible_time_window`: Allows you to configure a time window during which EventBridge
  Scheduler invokes the schedule.
- `name`: The name of the schedule that you are creating.
- `schedule_expression`:  The expression that defines when the schedule runs. The following
  formats are supported.     at expression - at(yyyy-mm-ddThh:mm:ss)     rate expression -
  rate(value unit)     cron expression - cron(fields)     You can use at expressions to
  create one-time schedules that invoke a target once, at the time and in the time zone, that
  you specify. You can use rate and cron expressions to create recurring schedules.
  Rate-based schedules are useful when you want to invoke a target at regular intervals, such
  as every 15 minutes or every five days. Cron-based schedules are useful when you want to
  invoke a target periodically at a specific time, such as at 8:00 am (UTC+0) every 1st day
  of the month.   A cron expression consists of six fields separated by white spaces:
  (minutes hours day_of_month month day_of_week year).   A rate expression consists of a
  value as a positive integer, and a unit with the following options: minute | minutes | hour
  | hours | day | days   For more information and examples, see Schedule types on EventBridge
  Scheduler in the EventBridge Scheduler User Guide.
- `target`: The schedule's target.

# Optional Parameters
Optional parameters can be passed as a `params::Dict{String,<:Any}`. Valid keys are:
- `"ActionAfterCompletion"`: Specifies the action that EventBridge Scheduler applies to the
  schedule after the schedule completes invoking the target.
- `"ClientToken"`:  Unique, case-sensitive identifier you provide to ensure the idempotency
  of the request. If you do not specify a client token, EventBridge Scheduler uses a randomly
  generated token for the request to ensure idempotency.
- `"Description"`: The description you specify for the schedule.
- `"EndDate"`: The date, in UTC, before which the schedule can invoke its target. Depending
  on the schedule's recurrence expression, invocations might stop on, or before, the EndDate
  you specify. EventBridge Scheduler ignores EndDate for one-time schedules.
- `"GroupName"`: The name of the schedule group to associate with this schedule. If you
  omit this, the default schedule group is used.
- `"KmsKeyArn"`: The Amazon Resource Name (ARN) for the customer managed KMS key that
  EventBridge Scheduler will use to encrypt and decrypt your data.
- `"ScheduleExpressionTimezone"`: The timezone in which the scheduling expression is
  evaluated.
- `"StartDate"`: The date, in UTC, after which the schedule can begin invoking its target.
  Depending on the schedule's recurrence expression, invocations might occur on, or after,
  the StartDate you specify. EventBridge Scheduler ignores StartDate for one-time schedules.
- `"State"`: Specifies whether the schedule is enabled or disabled.
"""
function create_schedule(
    FlexibleTimeWindow,
    Name,
    ScheduleExpression,
    Target;
    aws_config::AbstractAWSConfig=global_aws_config(),
)
    return scheduler(
        "POST",
        "/schedules/$(Name)",
        Dict{String,Any}(
            "FlexibleTimeWindow" => FlexibleTimeWindow,
            "ScheduleExpression" => ScheduleExpression,
            "Target" => Target,
            "ClientToken" => string(uuid4()),
        );
        aws_config=aws_config,
        feature_set=SERVICE_FEATURE_SET,
    )
end
function create_schedule(
    FlexibleTimeWindow,
    Name,
    ScheduleExpression,
    Target,
    params::AbstractDict{String};
    aws_config::AbstractAWSConfig=global_aws_config(),
)
    return scheduler(
        "POST",
        "/schedules/$(Name)",
        Dict{String,Any}(
            mergewith(
                _merge,
                Dict{String,Any}(
                    "FlexibleTimeWindow" => FlexibleTimeWindow,
                    "ScheduleExpression" => ScheduleExpression,
                    "Target" => Target,
                    "ClientToken" => string(uuid4()),
                ),
                params,
            ),
        );
        aws_config=aws_config,
        feature_set=SERVICE_FEATURE_SET,
    )
end

"""
    create_schedule_group(name)
    create_schedule_group(name, params::Dict{String,<:Any})

Creates the specified schedule group.

# Arguments
- `name`: The name of the schedule group that you are creating.

# Optional Parameters
Optional parameters can be passed as a `params::Dict{String,<:Any}`. Valid keys are:
- `"ClientToken"`:  Unique, case-sensitive identifier you provide to ensure the idempotency
  of the request. If you do not specify a client token, EventBridge Scheduler uses a randomly
  generated token for the request to ensure idempotency.
- `"Tags"`: The list of tags to associate with the schedule group.
"""
function create_schedule_group(Name; aws_config::AbstractAWSConfig=global_aws_config())
    return scheduler(
        "POST",
        "/schedule-groups/$(Name)",
        Dict{String,Any}("ClientToken" => string(uuid4()));
        aws_config=aws_config,
        feature_set=SERVICE_FEATURE_SET,
    )
end
function create_schedule_group(
    Name, params::AbstractDict{String}; aws_config::AbstractAWSConfig=global_aws_config()
)
    return scheduler(
        "POST",
        "/schedule-groups/$(Name)",
        Dict{String,Any}(
            mergewith(_merge, Dict{String,Any}("ClientToken" => string(uuid4())), params)
        );
        aws_config=aws_config,
        feature_set=SERVICE_FEATURE_SET,
    )
end

"""
    delete_schedule(name)
    delete_schedule(name, params::Dict{String,<:Any})

Deletes the specified schedule.

# Arguments
- `name`: The name of the schedule to delete.

# Optional Parameters
Optional parameters can be passed as a `params::Dict{String,<:Any}`. Valid keys are:
- `"clientToken"`:  Unique, case-sensitive identifier you provide to ensure the idempotency
  of the request. If you do not specify a client token, EventBridge Scheduler uses a randomly
  generated token for the request to ensure idempotency.
- `"groupName"`: The name of the schedule group associated with this schedule. If you omit
  this, the default schedule group is used.
"""
function delete_schedule(Name; aws_config::AbstractAWSConfig=global_aws_config())
    return scheduler(
        "DELETE",
        "/schedules/$(Name)",
        Dict{String,Any}("clientToken" => string(uuid4()));
        aws_config=aws_config,
        feature_set=SERVICE_FEATURE_SET,
    )
end
function delete_schedule(
    Name, params::AbstractDict{String}; aws_config::AbstractAWSConfig=global_aws_config()
)
    return scheduler(
        "DELETE",
        "/schedules/$(Name)",
        Dict{String,Any}(
            mergewith(_merge, Dict{String,Any}("clientToken" => string(uuid4())), params)
        );
        aws_config=aws_config,
        feature_set=SERVICE_FEATURE_SET,
    )
end

"""
    delete_schedule_group(name)
    delete_schedule_group(name, params::Dict{String,<:Any})

Deletes the specified schedule group. Deleting a schedule group results in EventBridge
Scheduler deleting all schedules associated with the group. When you delete a group, it
remains in a DELETING state until all of its associated schedules are deleted. Schedules
associated with the group that are set to run while the schedule group is in the process of
being deleted might continue to invoke their targets until the schedule group and its
associated schedules are deleted.   This operation is eventually consistent.

# Arguments
- `name`: The name of the schedule group to delete.

# Optional Parameters
Optional parameters can be passed as a `params::Dict{String,<:Any}`. Valid keys are:
- `"clientToken"`:  Unique, case-sensitive identifier you provide to ensure the idempotency
  of the request. If you do not specify a client token, EventBridge Scheduler uses a randomly
  generated token for the request to ensure idempotency.
"""
function delete_schedule_group(Name; aws_config::AbstractAWSConfig=global_aws_config())
    return scheduler(
        "DELETE",
        "/schedule-groups/$(Name)",
        Dict{String,Any}("clientToken" => string(uuid4()));
        aws_config=aws_config,
        feature_set=SERVICE_FEATURE_SET,
    )
end
function delete_schedule_group(
    Name, params::AbstractDict{String}; aws_config::AbstractAWSConfig=global_aws_config()
)
    return scheduler(
        "DELETE",
        "/schedule-groups/$(Name)",
        Dict{String,Any}(
            mergewith(_merge, Dict{String,Any}("clientToken" => string(uuid4())), params)
        );
        aws_config=aws_config,
        feature_set=SERVICE_FEATURE_SET,
    )
end

"""
    get_schedule(name)
    get_schedule(name, params::Dict{String,<:Any})

Retrieves the specified schedule.

# Arguments
- `name`: The name of the schedule to retrieve.

# Optional Parameters
Optional parameters can be passed as a `params::Dict{String,<:Any}`. Valid keys are:
- `"groupName"`: The name of the schedule group associated with this schedule. If you omit
  this, EventBridge Scheduler assumes that the schedule is associated with the default group.
"""
function get_schedule(Name; aws_config::AbstractAWSConfig=global_aws_config())
    return scheduler(
        "GET", "/schedules/$(Name)"; aws_config=aws_config, feature_set=SERVICE_FEATURE_SET
    )
end
function get_schedule(
    Name, params::AbstractDict{String}; aws_config::AbstractAWSConfig=global_aws_config()
)
    return scheduler(
        "GET",
        "/schedules/$(Name)",
        params;
        aws_config=aws_config,
        feature_set=SERVICE_FEATURE_SET,
    )
end

"""
    get_schedule_group(name)
    get_schedule_group(name, params::Dict{String,<:Any})

Retrieves the specified schedule group.

# Arguments
- `name`: The name of the schedule group to retrieve.

"""
function get_schedule_group(Name; aws_config::AbstractAWSConfig=global_aws_config())
    return scheduler(
        "GET",
        "/schedule-groups/$(Name)";
        aws_config=aws_config,
        feature_set=SERVICE_FEATURE_SET,
    )
end
function get_schedule_group(
    Name, params::AbstractDict{String}; aws_config::AbstractAWSConfig=global_aws_config()
)
    return scheduler(
        "GET",
        "/schedule-groups/$(Name)",
        params;
        aws_config=aws_config,
        feature_set=SERVICE_FEATURE_SET,
    )
end

"""
    list_schedule_groups()
    list_schedule_groups(params::Dict{String,<:Any})

Returns a paginated list of your schedule groups.

# Optional Parameters
Optional parameters can be passed as a `params::Dict{String,<:Any}`. Valid keys are:
- `"MaxResults"`: If specified, limits the number of results returned by this operation.
  The operation also returns a NextToken which you can use in a subsequent operation to
  retrieve the next set of results.
- `"NamePrefix"`: The name prefix that you can use to return a filtered list of your
  schedule groups.
- `"NextToken"`: The token returned by a previous call to retrieve the next set of results.
"""
function list_schedule_groups(; aws_config::AbstractAWSConfig=global_aws_config())
    return scheduler(
        "GET", "/schedule-groups"; aws_config=aws_config, feature_set=SERVICE_FEATURE_SET
    )
end
function list_schedule_groups(
    params::AbstractDict{String}; aws_config::AbstractAWSConfig=global_aws_config()
)
    return scheduler(
        "GET",
        "/schedule-groups",
        params;
        aws_config=aws_config,
        feature_set=SERVICE_FEATURE_SET,
    )
end

"""
    list_schedules()
    list_schedules(params::Dict{String,<:Any})

Returns a paginated list of your EventBridge Scheduler schedules.

# Optional Parameters
Optional parameters can be passed as a `params::Dict{String,<:Any}`. Valid keys are:
- `"MaxResults"`: If specified, limits the number of results returned by this operation.
  The operation also returns a NextToken which you can use in a subsequent operation to
  retrieve the next set of results.
- `"NamePrefix"`: Schedule name prefix to return the filtered list of resources.
- `"NextToken"`: The token returned by a previous call to retrieve the next set of results.
- `"ScheduleGroup"`: If specified, only lists the schedules whose associated schedule group
  matches the given filter.
- `"State"`: If specified, only lists the schedules whose current state matches the given
  filter.
"""
function list_schedules(; aws_config::AbstractAWSConfig=global_aws_config())
    return scheduler(
        "GET", "/schedules"; aws_config=aws_config, feature_set=SERVICE_FEATURE_SET
    )
end
function list_schedules(
    params::AbstractDict{String}; aws_config::AbstractAWSConfig=global_aws_config()
)
    return scheduler(
        "GET", "/schedules", params; aws_config=aws_config, feature_set=SERVICE_FEATURE_SET
    )
end

"""
    list_tags_for_resource(resource_arn)
    list_tags_for_resource(resource_arn, params::Dict{String,<:Any})

Lists the tags associated with the Scheduler resource.

# Arguments
- `resource_arn`: The ARN of the EventBridge Scheduler resource for which you want to view
  tags.

"""
function list_tags_for_resource(
    ResourceArn; aws_config::AbstractAWSConfig=global_aws_config()
)
    return scheduler(
        "GET",
        "/tags/$(ResourceArn)";
        aws_config=aws_config,
        feature_set=SERVICE_FEATURE_SET,
    )
end
function list_tags_for_resource(
    ResourceArn,
    params::AbstractDict{String};
    aws_config::AbstractAWSConfig=global_aws_config(),
)
    return scheduler(
        "GET",
        "/tags/$(ResourceArn)",
        params;
        aws_config=aws_config,
        feature_set=SERVICE_FEATURE_SET,
    )
end

"""
    tag_resource(resource_arn, tags)
    tag_resource(resource_arn, tags, params::Dict{String,<:Any})

Assigns one or more tags (key-value pairs) to the specified EventBridge Scheduler resource.
You can only assign tags to schedule groups.

# Arguments
- `resource_arn`: The Amazon Resource Name (ARN) of the schedule group that you are adding
  tags to.
- `tags`: The list of tags to associate with the schedule group.

"""
function tag_resource(ResourceArn, Tags; aws_config::AbstractAWSConfig=global_aws_config())
    return scheduler(
        "POST",
        "/tags/$(ResourceArn)",
        Dict{String,Any}("Tags" => Tags);
        aws_config=aws_config,
        feature_set=SERVICE_FEATURE_SET,
    )
end
function tag_resource(
    ResourceArn,
    Tags,
    params::AbstractDict{String};
    aws_config::AbstractAWSConfig=global_aws_config(),
)
    return scheduler(
        "POST",
        "/tags/$(ResourceArn)",
        Dict{String,Any}(mergewith(_merge, Dict{String,Any}("Tags" => Tags), params));
        aws_config=aws_config,
        feature_set=SERVICE_FEATURE_SET,
    )
end

"""
    untag_resource(resource_arn, tag_keys)
    untag_resource(resource_arn, tag_keys, params::Dict{String,<:Any})

Removes one or more tags from the specified EventBridge Scheduler schedule group.

# Arguments
- `resource_arn`: The Amazon Resource Name (ARN) of the schedule group from which you are
  removing tags.
- `tag_keys`: The list of tag keys to remove from the resource.

"""
function untag_resource(
    ResourceArn, TagKeys; aws_config::AbstractAWSConfig=global_aws_config()
)
    return scheduler(
        "DELETE",
        "/tags/$(ResourceArn)",
        Dict{String,Any}("TagKeys" => TagKeys);
        aws_config=aws_config,
        feature_set=SERVICE_FEATURE_SET,
    )
end
function untag_resource(
    ResourceArn,
    TagKeys,
    params::AbstractDict{String};
    aws_config::AbstractAWSConfig=global_aws_config(),
)
    return scheduler(
        "DELETE",
        "/tags/$(ResourceArn)",
        Dict{String,Any}(mergewith(_merge, Dict{String,Any}("TagKeys" => TagKeys), params));
        aws_config=aws_config,
        feature_set=SERVICE_FEATURE_SET,
    )
end

"""
    update_schedule(flexible_time_window, name, schedule_expression, target)
    update_schedule(flexible_time_window, name, schedule_expression, target, params::Dict{String,<:Any})

 Updates the specified schedule. When you call UpdateSchedule, EventBridge Scheduler uses
all values, including empty values, specified in the request and overrides the existing
schedule. This is by design. This means that if you do not set an optional field in your
request, that field will be set to its system-default value after the update.   Before
calling this operation, we recommend that you call the GetSchedule API operation and make a
note of all optional parameters for your UpdateSchedule call.

# Arguments
- `flexible_time_window`: Allows you to configure a time window during which EventBridge
  Scheduler invokes the schedule.
- `name`: The name of the schedule that you are updating.
- `schedule_expression`:  The expression that defines when the schedule runs. The following
  formats are supported.     at expression - at(yyyy-mm-ddThh:mm:ss)     rate expression -
  rate(value unit)     cron expression - cron(fields)     You can use at expressions to
  create one-time schedules that invoke a target once, at the time and in the time zone, that
  you specify. You can use rate and cron expressions to create recurring schedules.
  Rate-based schedules are useful when you want to invoke a target at regular intervals, such
  as every 15 minutes or every five days. Cron-based schedules are useful when you want to
  invoke a target periodically at a specific time, such as at 8:00 am (UTC+0) every 1st day
  of the month.   A cron expression consists of six fields separated by white spaces:
  (minutes hours day_of_month month day_of_week year).   A rate expression consists of a
  value as a positive integer, and a unit with the following options: minute | minutes | hour
  | hours | day | days   For more information and examples, see Schedule types on EventBridge
  Scheduler in the EventBridge Scheduler User Guide.
- `target`: The schedule target. You can use this operation to change the target that your
  schedule invokes.

# Optional Parameters
Optional parameters can be passed as a `params::Dict{String,<:Any}`. Valid keys are:
- `"ActionAfterCompletion"`: Specifies the action that EventBridge Scheduler applies to the
  schedule after the schedule completes invoking the target.
- `"ClientToken"`:  Unique, case-sensitive identifier you provide to ensure the idempotency
  of the request. If you do not specify a client token, EventBridge Scheduler uses a randomly
  generated token for the request to ensure idempotency.
- `"Description"`: The description you specify for the schedule.
- `"EndDate"`: The date, in UTC, before which the schedule can invoke its target. Depending
  on the schedule's recurrence expression, invocations might stop on, or before, the EndDate
  you specify. EventBridge Scheduler ignores EndDate for one-time schedules.
- `"GroupName"`: The name of the schedule group with which the schedule is associated. You
  must provide this value in order for EventBridge Scheduler to find the schedule you want to
  update. If you omit this value, EventBridge Scheduler assumes the group is associated to
  the default group.
- `"KmsKeyArn"`: The ARN for the customer managed KMS key that that you want EventBridge
  Scheduler to use to encrypt and decrypt your data.
- `"ScheduleExpressionTimezone"`: The timezone in which the scheduling expression is
  evaluated.
- `"StartDate"`: The date, in UTC, after which the schedule can begin invoking its target.
  Depending on the schedule's recurrence expression, invocations might occur on, or after,
  the StartDate you specify. EventBridge Scheduler ignores StartDate for one-time schedules.
- `"State"`: Specifies whether the schedule is enabled or disabled.
"""
function update_schedule(
    FlexibleTimeWindow,
    Name,
    ScheduleExpression,
    Target;
    aws_config::AbstractAWSConfig=global_aws_config(),
)
    return scheduler(
        "PUT",
        "/schedules/$(Name)",
        Dict{String,Any}(
            "FlexibleTimeWindow" => FlexibleTimeWindow,
            "ScheduleExpression" => ScheduleExpression,
            "Target" => Target,
            "ClientToken" => string(uuid4()),
        );
        aws_config=aws_config,
        feature_set=SERVICE_FEATURE_SET,
    )
end
function update_schedule(
    FlexibleTimeWindow,
    Name,
    ScheduleExpression,
    Target,
    params::AbstractDict{String};
    aws_config::AbstractAWSConfig=global_aws_config(),
)
    return scheduler(
        "PUT",
        "/schedules/$(Name)",
        Dict{String,Any}(
            mergewith(
                _merge,
                Dict{String,Any}(
                    "FlexibleTimeWindow" => FlexibleTimeWindow,
                    "ScheduleExpression" => ScheduleExpression,
                    "Target" => Target,
                    "ClientToken" => string(uuid4()),
                ),
                params,
            ),
        );
        aws_config=aws_config,
        feature_set=SERVICE_FEATURE_SET,
    )
end

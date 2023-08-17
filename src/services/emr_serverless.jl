# This file is auto-generated by AWSMetadata.jl
using AWS
using AWS.AWSServices: emr_serverless
using AWS.Compat
using AWS.UUIDs

"""
    cancel_job_run(application_id, job_run_id)
    cancel_job_run(application_id, job_run_id, params::Dict{String,<:Any})

Cancels a job run.

# Arguments
- `application_id`: The ID of the application on which the job run will be canceled.
- `job_run_id`: The ID of the job run to cancel.

"""
function cancel_job_run(
    applicationId, jobRunId; aws_config::AbstractAWSConfig=global_aws_config()
)
    return emr_serverless(
        "DELETE",
        "/applications/$(applicationId)/jobruns/$(jobRunId)";
        aws_config=aws_config,
        feature_set=SERVICE_FEATURE_SET,
    )
end
function cancel_job_run(
    applicationId,
    jobRunId,
    params::AbstractDict{String};
    aws_config::AbstractAWSConfig=global_aws_config(),
)
    return emr_serverless(
        "DELETE",
        "/applications/$(applicationId)/jobruns/$(jobRunId)",
        params;
        aws_config=aws_config,
        feature_set=SERVICE_FEATURE_SET,
    )
end

"""
    create_application(client_token, release_label, type)
    create_application(client_token, release_label, type, params::Dict{String,<:Any})

Creates an application.

# Arguments
- `client_token`: The client idempotency token of the application to create. Its value must
  be unique for each request.
- `release_label`: The Amazon EMR release associated with the application.
- `type`: The type of application you want to start, such as Spark or Hive.

# Optional Parameters
Optional parameters can be passed as a `params::Dict{String,<:Any}`. Valid keys are:
- `"architecture"`: The CPU architecture of an application.
- `"autoStartConfiguration"`: The configuration for an application to automatically start
  on job submission.
- `"autoStopConfiguration"`: The configuration for an application to automatically stop
  after a certain amount of time being idle.
- `"imageConfiguration"`: The image configuration for all worker types. You can either set
  this parameter or imageConfiguration for each worker type in workerTypeSpecifications.
- `"initialCapacity"`: The capacity to initialize when the application is created.
- `"maximumCapacity"`: The maximum capacity to allocate when the application is created.
  This is cumulative across all workers at any given point in time, not just when an
  application is created. No new resources will be created once any one of the defined limits
  is hit.
- `"name"`: The name of the application.
- `"networkConfiguration"`: The network configuration for customer VPC connectivity.
- `"tags"`: The tags assigned to the application.
- `"workerTypeSpecifications"`: The key-value pairs that specify worker type to
  WorkerTypeSpecificationInput. This parameter must contain all valid worker types for a
  Spark or Hive application. Valid worker types include Driver and Executor for Spark
  applications and HiveDriver and TezTask for Hive applications. You can either set image
  details in this parameter for each worker type, or in imageConfiguration for all worker
  types.
"""
function create_application(
    clientToken, releaseLabel, type; aws_config::AbstractAWSConfig=global_aws_config()
)
    return emr_serverless(
        "POST",
        "/applications",
        Dict{String,Any}(
            "clientToken" => clientToken, "releaseLabel" => releaseLabel, "type" => type
        );
        aws_config=aws_config,
        feature_set=SERVICE_FEATURE_SET,
    )
end
function create_application(
    clientToken,
    releaseLabel,
    type,
    params::AbstractDict{String};
    aws_config::AbstractAWSConfig=global_aws_config(),
)
    return emr_serverless(
        "POST",
        "/applications",
        Dict{String,Any}(
            mergewith(
                _merge,
                Dict{String,Any}(
                    "clientToken" => clientToken,
                    "releaseLabel" => releaseLabel,
                    "type" => type,
                ),
                params,
            ),
        );
        aws_config=aws_config,
        feature_set=SERVICE_FEATURE_SET,
    )
end

"""
    delete_application(application_id)
    delete_application(application_id, params::Dict{String,<:Any})

Deletes an application. An application has to be in a stopped or created state in order to
be deleted.

# Arguments
- `application_id`: The ID of the application that will be deleted.

"""
function delete_application(
    applicationId; aws_config::AbstractAWSConfig=global_aws_config()
)
    return emr_serverless(
        "DELETE",
        "/applications/$(applicationId)";
        aws_config=aws_config,
        feature_set=SERVICE_FEATURE_SET,
    )
end
function delete_application(
    applicationId,
    params::AbstractDict{String};
    aws_config::AbstractAWSConfig=global_aws_config(),
)
    return emr_serverless(
        "DELETE",
        "/applications/$(applicationId)",
        params;
        aws_config=aws_config,
        feature_set=SERVICE_FEATURE_SET,
    )
end

"""
    get_application(application_id)
    get_application(application_id, params::Dict{String,<:Any})

Displays detailed information about a specified application.

# Arguments
- `application_id`: The ID of the application that will be described.

"""
function get_application(applicationId; aws_config::AbstractAWSConfig=global_aws_config())
    return emr_serverless(
        "GET",
        "/applications/$(applicationId)";
        aws_config=aws_config,
        feature_set=SERVICE_FEATURE_SET,
    )
end
function get_application(
    applicationId,
    params::AbstractDict{String};
    aws_config::AbstractAWSConfig=global_aws_config(),
)
    return emr_serverless(
        "GET",
        "/applications/$(applicationId)",
        params;
        aws_config=aws_config,
        feature_set=SERVICE_FEATURE_SET,
    )
end

"""
    get_dashboard_for_job_run(application_id, job_run_id)
    get_dashboard_for_job_run(application_id, job_run_id, params::Dict{String,<:Any})

Creates and returns a URL that you can use to access the application UIs for a job run. For
jobs in a running state, the application UI is a live user interface such as the Spark or
Tez web UI. For completed jobs, the application UI is a persistent application user
interface such as the Spark History Server or persistent Tez UI.  The URL is valid for one
hour after you generate it. To access the application UI after that hour elapses, you must
invoke the API again to generate a new URL.

# Arguments
- `application_id`: The ID of the application.
- `job_run_id`: The ID of the job run.

"""
function get_dashboard_for_job_run(
    applicationId, jobRunId; aws_config::AbstractAWSConfig=global_aws_config()
)
    return emr_serverless(
        "GET",
        "/applications/$(applicationId)/jobruns/$(jobRunId)/dashboard";
        aws_config=aws_config,
        feature_set=SERVICE_FEATURE_SET,
    )
end
function get_dashboard_for_job_run(
    applicationId,
    jobRunId,
    params::AbstractDict{String};
    aws_config::AbstractAWSConfig=global_aws_config(),
)
    return emr_serverless(
        "GET",
        "/applications/$(applicationId)/jobruns/$(jobRunId)/dashboard",
        params;
        aws_config=aws_config,
        feature_set=SERVICE_FEATURE_SET,
    )
end

"""
    get_job_run(application_id, job_run_id)
    get_job_run(application_id, job_run_id, params::Dict{String,<:Any})

Displays detailed information about a job run.

# Arguments
- `application_id`: The ID of the application on which the job run is submitted.
- `job_run_id`: The ID of the job run.

"""
function get_job_run(
    applicationId, jobRunId; aws_config::AbstractAWSConfig=global_aws_config()
)
    return emr_serverless(
        "GET",
        "/applications/$(applicationId)/jobruns/$(jobRunId)";
        aws_config=aws_config,
        feature_set=SERVICE_FEATURE_SET,
    )
end
function get_job_run(
    applicationId,
    jobRunId,
    params::AbstractDict{String};
    aws_config::AbstractAWSConfig=global_aws_config(),
)
    return emr_serverless(
        "GET",
        "/applications/$(applicationId)/jobruns/$(jobRunId)",
        params;
        aws_config=aws_config,
        feature_set=SERVICE_FEATURE_SET,
    )
end

"""
    list_applications()
    list_applications(params::Dict{String,<:Any})

Lists applications based on a set of parameters.

# Optional Parameters
Optional parameters can be passed as a `params::Dict{String,<:Any}`. Valid keys are:
- `"maxResults"`: The maximum number of applications that can be listed.
- `"nextToken"`: The token for the next set of application results.
- `"states"`: An optional filter for application states. Note that if this filter contains
  multiple states, the resulting list will be grouped by the state.
"""
function list_applications(; aws_config::AbstractAWSConfig=global_aws_config())
    return emr_serverless(
        "GET", "/applications"; aws_config=aws_config, feature_set=SERVICE_FEATURE_SET
    )
end
function list_applications(
    params::AbstractDict{String}; aws_config::AbstractAWSConfig=global_aws_config()
)
    return emr_serverless(
        "GET",
        "/applications",
        params;
        aws_config=aws_config,
        feature_set=SERVICE_FEATURE_SET,
    )
end

"""
    list_job_runs(application_id)
    list_job_runs(application_id, params::Dict{String,<:Any})

Lists job runs based on a set of parameters.

# Arguments
- `application_id`: The ID of the application for which to list the job run.

# Optional Parameters
Optional parameters can be passed as a `params::Dict{String,<:Any}`. Valid keys are:
- `"createdAtAfter"`: The lower bound of the option to filter by creation date and time.
- `"createdAtBefore"`: The upper bound of the option to filter by creation date and time.
- `"maxResults"`: The maximum number of job runs that can be listed.
- `"nextToken"`: The token for the next set of job run results.
- `"states"`: An optional filter for job run states. Note that if this filter contains
  multiple states, the resulting list will be grouped by the state.
"""
function list_job_runs(applicationId; aws_config::AbstractAWSConfig=global_aws_config())
    return emr_serverless(
        "GET",
        "/applications/$(applicationId)/jobruns";
        aws_config=aws_config,
        feature_set=SERVICE_FEATURE_SET,
    )
end
function list_job_runs(
    applicationId,
    params::AbstractDict{String};
    aws_config::AbstractAWSConfig=global_aws_config(),
)
    return emr_serverless(
        "GET",
        "/applications/$(applicationId)/jobruns",
        params;
        aws_config=aws_config,
        feature_set=SERVICE_FEATURE_SET,
    )
end

"""
    list_tags_for_resource(resource_arn)
    list_tags_for_resource(resource_arn, params::Dict{String,<:Any})

Lists the tags assigned to the resources.

# Arguments
- `resource_arn`: The Amazon Resource Name (ARN) that identifies the resource to list the
  tags for. Currently, the supported resources are Amazon EMR Serverless applications and job
  runs.

"""
function list_tags_for_resource(
    resourceArn; aws_config::AbstractAWSConfig=global_aws_config()
)
    return emr_serverless(
        "GET",
        "/tags/$(resourceArn)";
        aws_config=aws_config,
        feature_set=SERVICE_FEATURE_SET,
    )
end
function list_tags_for_resource(
    resourceArn,
    params::AbstractDict{String};
    aws_config::AbstractAWSConfig=global_aws_config(),
)
    return emr_serverless(
        "GET",
        "/tags/$(resourceArn)",
        params;
        aws_config=aws_config,
        feature_set=SERVICE_FEATURE_SET,
    )
end

"""
    start_application(application_id)
    start_application(application_id, params::Dict{String,<:Any})

Starts a specified application and initializes initial capacity if configured.

# Arguments
- `application_id`: The ID of the application to start.

"""
function start_application(applicationId; aws_config::AbstractAWSConfig=global_aws_config())
    return emr_serverless(
        "POST",
        "/applications/$(applicationId)/start";
        aws_config=aws_config,
        feature_set=SERVICE_FEATURE_SET,
    )
end
function start_application(
    applicationId,
    params::AbstractDict{String};
    aws_config::AbstractAWSConfig=global_aws_config(),
)
    return emr_serverless(
        "POST",
        "/applications/$(applicationId)/start",
        params;
        aws_config=aws_config,
        feature_set=SERVICE_FEATURE_SET,
    )
end

"""
    start_job_run(application_id, client_token, execution_role_arn)
    start_job_run(application_id, client_token, execution_role_arn, params::Dict{String,<:Any})

Starts a job run.

# Arguments
- `application_id`: The ID of the application on which to run the job.
- `client_token`: The client idempotency token of the job run to start. Its value must be
  unique for each request.
- `execution_role_arn`: The execution role ARN for the job run.

# Optional Parameters
Optional parameters can be passed as a `params::Dict{String,<:Any}`. Valid keys are:
- `"configurationOverrides"`: The configuration overrides for the job run.
- `"executionTimeoutMinutes"`: The maximum duration for the job run to run. If the job run
  runs beyond this duration, it will be automatically cancelled.
- `"jobDriver"`: The job driver for the job run.
- `"name"`: The optional job run name. This doesn't have to be unique.
- `"tags"`: The tags assigned to the job run.
"""
function start_job_run(
    applicationId,
    clientToken,
    executionRoleArn;
    aws_config::AbstractAWSConfig=global_aws_config(),
)
    return emr_serverless(
        "POST",
        "/applications/$(applicationId)/jobruns",
        Dict{String,Any}(
            "clientToken" => clientToken, "executionRoleArn" => executionRoleArn
        );
        aws_config=aws_config,
        feature_set=SERVICE_FEATURE_SET,
    )
end
function start_job_run(
    applicationId,
    clientToken,
    executionRoleArn,
    params::AbstractDict{String};
    aws_config::AbstractAWSConfig=global_aws_config(),
)
    return emr_serverless(
        "POST",
        "/applications/$(applicationId)/jobruns",
        Dict{String,Any}(
            mergewith(
                _merge,
                Dict{String,Any}(
                    "clientToken" => clientToken, "executionRoleArn" => executionRoleArn
                ),
                params,
            ),
        );
        aws_config=aws_config,
        feature_set=SERVICE_FEATURE_SET,
    )
end

"""
    stop_application(application_id)
    stop_application(application_id, params::Dict{String,<:Any})

Stops a specified application and releases initial capacity if configured. All scheduled
and running jobs must be completed or cancelled before stopping an application.

# Arguments
- `application_id`: The ID of the application to stop.

"""
function stop_application(applicationId; aws_config::AbstractAWSConfig=global_aws_config())
    return emr_serverless(
        "POST",
        "/applications/$(applicationId)/stop";
        aws_config=aws_config,
        feature_set=SERVICE_FEATURE_SET,
    )
end
function stop_application(
    applicationId,
    params::AbstractDict{String};
    aws_config::AbstractAWSConfig=global_aws_config(),
)
    return emr_serverless(
        "POST",
        "/applications/$(applicationId)/stop",
        params;
        aws_config=aws_config,
        feature_set=SERVICE_FEATURE_SET,
    )
end

"""
    tag_resource(resource_arn, tags)
    tag_resource(resource_arn, tags, params::Dict{String,<:Any})

Assigns tags to resources. A tag is a label that you assign to an Amazon Web Services
resource. Each tag consists of a key and an optional value, both of which you define. Tags
enable you to categorize your Amazon Web Services resources by attributes such as purpose,
owner, or environment. When you have many resources of the same type, you can quickly
identify a specific resource based on the tags you've assigned to it.

# Arguments
- `resource_arn`: The Amazon Resource Name (ARN) that identifies the resource to list the
  tags for. Currently, the supported resources are Amazon EMR Serverless applications and job
  runs.
- `tags`: The tags to add to the resource. A tag is an array of key-value pairs.

"""
function tag_resource(resourceArn, tags; aws_config::AbstractAWSConfig=global_aws_config())
    return emr_serverless(
        "POST",
        "/tags/$(resourceArn)",
        Dict{String,Any}("tags" => tags);
        aws_config=aws_config,
        feature_set=SERVICE_FEATURE_SET,
    )
end
function tag_resource(
    resourceArn,
    tags,
    params::AbstractDict{String};
    aws_config::AbstractAWSConfig=global_aws_config(),
)
    return emr_serverless(
        "POST",
        "/tags/$(resourceArn)",
        Dict{String,Any}(mergewith(_merge, Dict{String,Any}("tags" => tags), params));
        aws_config=aws_config,
        feature_set=SERVICE_FEATURE_SET,
    )
end

"""
    untag_resource(resource_arn, tag_keys)
    untag_resource(resource_arn, tag_keys, params::Dict{String,<:Any})

Removes tags from resources.

# Arguments
- `resource_arn`: The Amazon Resource Name (ARN) that identifies the resource to list the
  tags for. Currently, the supported resources are Amazon EMR Serverless applications and job
  runs.
- `tag_keys`: The keys of the tags to be removed.

"""
function untag_resource(
    resourceArn, tagKeys; aws_config::AbstractAWSConfig=global_aws_config()
)
    return emr_serverless(
        "DELETE",
        "/tags/$(resourceArn)",
        Dict{String,Any}("tagKeys" => tagKeys);
        aws_config=aws_config,
        feature_set=SERVICE_FEATURE_SET,
    )
end
function untag_resource(
    resourceArn,
    tagKeys,
    params::AbstractDict{String};
    aws_config::AbstractAWSConfig=global_aws_config(),
)
    return emr_serverless(
        "DELETE",
        "/tags/$(resourceArn)",
        Dict{String,Any}(mergewith(_merge, Dict{String,Any}("tagKeys" => tagKeys), params));
        aws_config=aws_config,
        feature_set=SERVICE_FEATURE_SET,
    )
end

"""
    update_application(application_id, client_token)
    update_application(application_id, client_token, params::Dict{String,<:Any})

Updates a specified application. An application has to be in a stopped or created state in
order to be updated.

# Arguments
- `application_id`: The ID of the application to update.
- `client_token`: The client idempotency token of the application to update. Its value must
  be unique for each request.

# Optional Parameters
Optional parameters can be passed as a `params::Dict{String,<:Any}`. Valid keys are:
- `"architecture"`: The CPU architecture of an application.
- `"autoStartConfiguration"`: The configuration for an application to automatically start
  on job submission.
- `"autoStopConfiguration"`: The configuration for an application to automatically stop
  after a certain amount of time being idle.
- `"imageConfiguration"`: The image configuration to be used for all worker types. You can
  either set this parameter or imageConfiguration for each worker type in
  WorkerTypeSpecificationInput.
- `"initialCapacity"`: The capacity to initialize when the application is updated.
- `"maximumCapacity"`: The maximum capacity to allocate when the application is updated.
  This is cumulative across all workers at any given point in time during the lifespan of the
  application. No new resources will be created once any one of the defined limits is hit.
- `"networkConfiguration"`:
- `"releaseLabel"`: The Amazon EMR release label for the application. You can change the
  release label to use a different release of Amazon EMR.
- `"workerTypeSpecifications"`: The key-value pairs that specify worker type to
  WorkerTypeSpecificationInput. This parameter must contain all valid worker types for a
  Spark or Hive application. Valid worker types include Driver and Executor for Spark
  applications and HiveDriver and TezTask for Hive applications. You can either set image
  details in this parameter for each worker type, or in imageConfiguration for all worker
  types.
"""
function update_application(
    applicationId, clientToken; aws_config::AbstractAWSConfig=global_aws_config()
)
    return emr_serverless(
        "PATCH",
        "/applications/$(applicationId)",
        Dict{String,Any}("clientToken" => clientToken);
        aws_config=aws_config,
        feature_set=SERVICE_FEATURE_SET,
    )
end
function update_application(
    applicationId,
    clientToken,
    params::AbstractDict{String};
    aws_config::AbstractAWSConfig=global_aws_config(),
)
    return emr_serverless(
        "PATCH",
        "/applications/$(applicationId)",
        Dict{String,Any}(
            mergewith(_merge, Dict{String,Any}("clientToken" => clientToken), params)
        );
        aws_config=aws_config,
        feature_set=SERVICE_FEATURE_SET,
    )
end

# Copyright 2017 Google Inc.
#
# Licensed under the Apache License, Version 2.0 (the &quot;License&quot;);
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an &quot;AS IS&quot; BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

# NOTE: This class is auto generated by the swagger code generator program.
# https://github.com/swagger-api/swagger-codegen.git
# Do not edit the class manually.

defmodule GoogleApi.AnalyticsReporting.V4.Model.MetricFilter do
  @moduledoc """
  MetricFilter specifies the filter on a metric.

  ## Attributes

  - comparisonValue (String.t): The value to compare against. Defaults to: `null`.
  - metricName (String.t): The metric that will be filtered on. A metricFilter must contain a metric name. A metric name can be an alias earlier defined as a metric or it can also be a metric expression. Defaults to: `null`.
  - not (boolean()): Logical &#x60;NOT&#x60; operator. If this boolean is set to true, then the matching metric values will be excluded in the report. The default is false. Defaults to: `null`.
  - operator (String.t): Is the metric &#x60;EQUAL&#x60;, &#x60;LESS_THAN&#x60; or &#x60;GREATER_THAN&#x60; the comparisonValue, the default is &#x60;EQUAL&#x60;. If the operator is &#x60;IS_MISSING&#x60;, checks if the metric is missing and would ignore the comparisonValue. Defaults to: `null`.
    - Enum - one of [OPERATOR_UNSPECIFIED, EQUAL, LESS_THAN, GREATER_THAN, IS_MISSING]
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :comparisonValue => any(),
          :metricName => any(),
          :not => any(),
          :operator => any()
        }

  field(:comparisonValue)
  field(:metricName)
  field(:not)
  field(:operator)
end

defimpl Poison.Decoder, for: GoogleApi.AnalyticsReporting.V4.Model.MetricFilter do
  def decode(value, options) do
    GoogleApi.AnalyticsReporting.V4.Model.MetricFilter.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.AnalyticsReporting.V4.Model.MetricFilter do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end

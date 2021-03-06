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

defmodule GoogleApi.Drive.V3.Model.TeamDriveCapabilities do
  @moduledoc """
  Capabilities the current user has on this Team Drive.

  ## Attributes

  - canAddChildren (boolean()): Whether the current user can add children to folders in this Team Drive. Defaults to: `null`.
  - canChangeTeamDriveBackground (boolean()): Whether the current user can change the background of this Team Drive. Defaults to: `null`.
  - canComment (boolean()): Whether the current user can comment on files in this Team Drive. Defaults to: `null`.
  - canCopy (boolean()): Whether the current user can copy files in this Team Drive. Defaults to: `null`.
  - canDeleteTeamDrive (boolean()): Whether the current user can delete this Team Drive. Attempting to delete the Team Drive may still fail if there are untrashed items inside the Team Drive. Defaults to: `null`.
  - canDownload (boolean()): Whether the current user can download files in this Team Drive. Defaults to: `null`.
  - canEdit (boolean()): Whether the current user can edit files in this Team Drive Defaults to: `null`.
  - canListChildren (boolean()): Whether the current user can list the children of folders in this Team Drive. Defaults to: `null`.
  - canManageMembers (boolean()): Whether the current user can add members to this Team Drive or remove them or change their role. Defaults to: `null`.
  - canReadRevisions (boolean()): Whether the current user can read the revisions resource of files in this Team Drive. Defaults to: `null`.
  - canRemoveChildren (boolean()): Whether the current user can remove children from folders in this Team Drive. Defaults to: `null`.
  - canRename (boolean()): Whether the current user can rename files or folders in this Team Drive. Defaults to: `null`.
  - canRenameTeamDrive (boolean()): Whether the current user can rename this Team Drive. Defaults to: `null`.
  - canShare (boolean()): Whether the current user can share files or folders in this Team Drive. Defaults to: `null`.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
    :"canAddChildren" => any(),
    :"canChangeTeamDriveBackground" => any(),
    :"canComment" => any(),
    :"canCopy" => any(),
    :"canDeleteTeamDrive" => any(),
    :"canDownload" => any(),
    :"canEdit" => any(),
    :"canListChildren" => any(),
    :"canManageMembers" => any(),
    :"canReadRevisions" => any(),
    :"canRemoveChildren" => any(),
    :"canRename" => any(),
    :"canRenameTeamDrive" => any(),
    :"canShare" => any()
  }

  field(:"canAddChildren")
  field(:"canChangeTeamDriveBackground")
  field(:"canComment")
  field(:"canCopy")
  field(:"canDeleteTeamDrive")
  field(:"canDownload")
  field(:"canEdit")
  field(:"canListChildren")
  field(:"canManageMembers")
  field(:"canReadRevisions")
  field(:"canRemoveChildren")
  field(:"canRename")
  field(:"canRenameTeamDrive")
  field(:"canShare")
end

defimpl Poison.Decoder, for: GoogleApi.Drive.V3.Model.TeamDriveCapabilities do
  def decode(value, options) do
    GoogleApi.Drive.V3.Model.TeamDriveCapabilities.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Drive.V3.Model.TeamDriveCapabilities do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end



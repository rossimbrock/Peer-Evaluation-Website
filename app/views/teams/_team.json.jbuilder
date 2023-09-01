json.extract! team, :id, :created_at, :updated_at
json.url team_url(team, format: :json)
json.url new_member_url(new_member, format: :json)

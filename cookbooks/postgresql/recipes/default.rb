#
# Cookbook Name:: postgresql
# Recipe:: default
#
# Copyright (c) 2016 The Authors, All Rights Reserved.

pacakge 'postgresql-server' do
	notifies :run, 'execute[postgresql-init]'
end

execute 'postgres-init' do
	command 'postgresql-setup initdb'
	action :nothing
end

service 'postgresql' do
	action[:enable, :start]
end


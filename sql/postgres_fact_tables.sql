create database chp_wh
	with owner postgres;

create table fact_budgets
(
	sid serial not null,
	id integer,
	media_profile_id integer,
	s_starts_at integer,
	starts_at timestamp,
	ends_at timestamp,
	s_ends_at integer,
	dollar_limit double precision,
	notes text,
	payment_type_id integer,
	markup_amount double precision,
	markup_type varchar,
	budget_type_id integer,
	indefinite boolean default true,
	client_id integer,
	deleted_at timestamp,
	s_deleted_at integer,
	management_percentage integer,
	actual_spend double precision
);

alter table fact_budgets owner to postgres;

create table fact_client_activities
(
	sid serial not null,
	id integer,
	client_id integer,
	user_id integer,
	activity_type varchar,
	inbound boolean default false,
	body text,
	logged_at timestamp,
	s_logged_at integer,
	included_stores text[] default '{}'::text[],
	related_staff text[] default '{}'::text[],
	file varchar
);

alter table fact_client_activities owner to postgres;

create table fact_client_sales
(
	sid serial not null,
	id integer,
	client_id integer,
	month date,
	s_month integer,
	new_sales integer,
	used_sales integer
);

alter table fact_client_sales owner to postgres;

create table fact_facebook_ad_budgets
(
	sid serial not null,
	id integer,
	client_id integer,
	facebook_ad_id integer,
	month date,
	s_month integer,
	start_date date,
	s_start_date integer,
	end_date date,
	s_end_date integer,
	amount double precision,
	notes text,
	allocation_notes text,
	confirmed integer,
	dynamic boolean,
	compliance varchar
);

alter table fact_facebook_ad_budgets owner to postgres;

create table fact_facebook_ad_results
(
	sid serial not null,
	id integer,
	ad_id integer,
	call_to_action_clicks integer,
	clicks integer,
	cpc double precision,
	cpm double precision,
	cpp double precision,
	ctr double precision,
	frequency double precision,
	impressions integer,
	inline_link_click_ctr double precision,
	inline_link_clicks integer,
	inline_post_engagement integer,
	reach integer,
	social_clicks integer,
	social_impressions integer,
	social_spend double precision,
	spend double precision,
	total_actions integer,
	total_unique_actions integer,
	unique_clicks integer,
	unique_ctr double precision,
	unique_inline_link_clicks integer,
	unique_inline_link_click_ctr double precision,
	date_start date,
	s_date_start integer,
	date_stop date,
	s_date_stop integer
);

alter table fact_facebook_ad_results owner to postgres;

create table fact_facebook_budget_rollovers
(
	sid serial not null,
	id integer,
	client_id integer,
	month date,
	s_month integer,
	amount double precision
);

alter table fact_facebook_budget_rollovers owner to postgres;

create table fact_google_adwords_video_ad_results
(
	sid serial not null,
	id integer,
	adwords_video_ad_id integer,
	impressions integer,
	clicks integer,
	views integer,
	view_rate double precision,
	view_through_conversions double precision,
	quartile_25_rate double precision,
	quartile_50_rate double precision,
	quartile_75_rate double precision,
	quartile_100_rate double precision,
	cost double precision,
	report_date date,
	s_report_date integer,
	adwords_video_campaign_id integer,
	adwords_video_ad_group_id integer
);

alter table fact_google_adwords_video_ad_results owner to postgres;

create table fact_insights_reports
(
	sid serial not null,
	id integer,
	client_id integer,
	start_date date,
	s_start_date integer,
	end_date date,
	s_end_date integer,
	filename text,
	golden boolean default true
);

alter table fact_insights_reports owner to postgres;

create table fact_kenshoo_campaign_results
(
	sid serial not null,
	id integer,
	campaign_id integer,
	impressions integer,
	impression_share double precision,
	lost_impression_share_budget double precision,
	lost_impression_share_rank double precision,
	clicks integer,
	ctr double precision,
	average_position double precision,
	cpc double precision,
	conversions integer,
	conversion_rate double precision,
	cost_per_conversion double precision,
	form_submissions integer,
	calls integer,
	chats integer,
	spend double precision,
	report_date date,
	s_report_date integer,
	orders integer,
	store_visits integer
);

alter table fact_kenshoo_campaign_results owner to postgres;

create table fact_kenshoo_channel_network_results
(
	sid serial not null,
	id integer,
	client_id integer,
	channel_network_id integer,
	clicks integer,
	report_date date,
	s_report_date integer
);

alter table fact_kenshoo_channel_network_results owner to postgres;

create table fact_kenshoo_keyword_results
(
	sid serial not null,
	id integer,
	impressions integer,
	clicks integer,
	ctr double precision,
	average_position double precision,
	cpc double precision,
	report_date date,
	s_report_date integer,
	cost double precision,
	ad_group_id integer,
	campaign_id integer,
	keyword_id integer
);

alter table fact_kenshoo_keyword_results owner to postgres;

create table fact_kenshoo_profile_results
(
	sid serial not null,
	id integer,
	client_id integer,
	cost double precision,
	cpc double precision,
	impressions integer,
	clicks integer,
	text_messages integer,
	form_submissions integer,
	chat_leads integer,
	calls integer,
	lead_submissions integer,
	conversions integer,
	conversion_rate double precision,
	cost_per_conversion double precision,
	trade_in integer,
	goal_1_completions integer,
	mailto integer,
	revenue double precision,
	revenue_per_conversion double precision,
	profit double precision,
	roi double precision,
	report_date date,
	s_report_date integer,
	orders integer
);

alter table fact_kenshoo_profile_results owner to postgres;

create table fact_marchex_calls
(
	sid serial not null,
	id integer,
	client_id integer,
	call_id varchar,
	call_start timestamp,
	s_call_start integer,
	call_end timestamp,
	s_call_end integer,
	duration integer,
	inbound_number varchar,
	caller_number varchar,
	caller_name varchar,
	status varchar,
	recorded boolean
);

alter table fact_marchex_calls owner to postgres;

create table fact_sem_activities
(
	sid serial not null,
	id integer,
	client_id integer,
	user_id integer,
	activity_type varchar,
	body text,
	included_stores text[] default '{}'::text[],
	related_staff text[] default '{}'::text[],
	logged_at timestamp,
	s_logged_at integer
);

alter table fact_sem_activities owner to postgres;

create table fact_seo_deliverables
(
	sid serial not null,
	id integer,
	client_id integer,
	user_id integer,
	summary varchar,
	description varchar,
	deliverable_type varchar,
	current_file varchar,
	previous_file varchar,
	logged_at timestamp,
	s_logged_at integer,
	file varchar
);

alter table fact_seo_deliverables owner to postgres;

create table fact_yahoo_gemini_results
(
	sid serial not null,
	id integer,
	campaign_id integer,
	ad_group_id integer,
	ad_id varchar,
	report_date date,
	s_report_date integer,
	impressions integer,
	clicks integer,
	ctr double precision,
	average_cpm double precision,
	max_bid double precision,
	video_views integer,
	video_25_complete integer,
	video_50_complete integer,
	video_75_complete integer,
	video_100_complete integer,
	spend double precision
);

alter table fact_yahoo_gemini_results owner to postgres;

create table fact_kenshoo_impression_share_results
(
	sid serial not null,
	id integer,
	campaign_id integer,
	month date,
	s_month integer,
	lost_is_budget double precision,
	lost_is_rank double precision
);

alter table fact_kenshoo_impression_share_results owner to postgres;

create table fact_social_activities
(
	sid serial not null,
	id integer,
	client_id integer,
	user_id integer,
	activity_type varchar,
	body text,
	included_stores text[] default '{}'::text[],
	related_staff text[] default '{}'::text[],
	logged_at timestamp,
	s_logged_at integer,
	file varchar
);

alter table fact_social_activities owner to postgres;

create table fact_client_leads
(
	sid serial not null,
	id integer,
	client_id integer,
	department_id integer,
	month date,
	s_month integer,
	new integer,
	used integer
);

alter table fact_client_leads owner to postgres;

create table fact_premium_overrides
(
	sid serial not null,
	id integer,
	subject_id varchar,
	custom_preview text,
	subject varchar,
	date date,
	s_date integer,
	subject_type varchar
);

alter table fact_premium_overrides owner to postgres;

create table fact_comanaged_budgets
(
	sid serial not null,
	id integer,
	client_id integer,
	category_id integer,
	starts_at date,
	s_starts_at integer,
	ends_at date,
	s_ends_at integer,
	invoice_amount double precision,
	markup double precision,
	actual_spend double precision,
	notes text,
	deleted_at timestamp,
	s_deleted_at integer,
	management_percentage double precision
);

alter table fact_comanaged_budgets owner to postgres;

create table fact_google_dv360_results
(
	sid serial not null,
	id integer,
	line_item varchar,
	impressions integer,
	creative_type integer,
	revenue double precision,
	line_item_type varchar,
	click_rate double precision,
	line_item_status varchar,
	total_conversions double precision,
	companion_creative varchar,
	billable_impressions integer,
	companion_creative_id integer,
	post_view_conversions double precision,
	complete_views_video integer,
	insertion_order_status varchar,
	post_click_conversions double precision,
	completion_rate_video double precision,
	revenue_ecpa double precision,
	media_cost_ecpa double precision not null,
	media_cost double precision,
	total_media_cost double precision,
	client_id integer,
	report_date timestamp,
	s_report_date integer,
	insertion_order_id integer,
	line_item_id integer,
	insertion_order varchar,
	creative_id integer,
	cm_placement_id integer,
	clicks integer
);

alter table fact_google_dv360_results owner to postgres;

create table fact_google_analytics_results
(
	sid serial not null,
	id integer,
	client_id integer,
	account_profile_id integer,
	report_id integer,
	metric varchar,
	sessions integer,
	users integer,
	bounces integer,
	session_duration integer,
	page_views integer,
	unique_page_views integer,
	time_on_page integer,
	report_date date,
	s_report_date integer
);

alter table fact_google_analytics_results owner to postgres;

create table fact_analytics_chanel_results
(
	sid serial not null,
	id integer,
	client_id integer,
	account_profile_id integer,
	report_id integer,
	metric varchar,
	sessions integer,
	transactions integer,
	transactionrevenue numeric,
	report_date date,
	s_report_date integer
);

alter table fact_analytics_chanel_results owner to postgres;

create table fact_google_analytics_ecommerce_results
(
	sid serial not null,
	id integer,
	client_id integer,
	account_profile_id integer,
	report_id integer,
	metric varchar,
	sessions integer,
	transactions integer,
	transactionrevenue numeric,
	report_date date,
	s_report_date integer
);

alter table fact_google_analytics_ecommerce_results owner to postgres;

create table fact_smart_pixl_visits
(
	sid serial not null,
	id integer,
	smart_pixl_record_id integer,
	report_date timestamp,
	os varchar,
	age integer,
	zip varchar,
	city varchar,
	date timestamp,
	s_date integer,
	make varchar,
	msrp integer,
	trim varchar,
	year integer,
	doors integer,
	model varchar,
	style varchar,
	state varchar,
	party varchar,
	client varchar,
	device varchar,
	gender varchar,
	plus_4 integer,
	address varchar,
	autovin varchar,
	browser varchar,
	dob_day varchar,
	zipcode integer,
	language varchar,
	lastname varchar,
	latitude text,
	religion varchar,
	recordid integer,
	reseller varchar,
	age_range varchar,
	body_type varchar,
	birthyear integer,
	dob_month integer,
	education varchar,
	fuel_type varchar,
	firstname varchar,
	last_seen integer,
	longitude text,
	countyname varchar,
	drive_type varchar,
	first_seen integer,
	dateofbirth varchar,
	max_payload integer,
	request_uri text,
	def_trans_id integer,
	ethnic_group varchar,
	http_referer varchar,
	vehicle_type varchar,
	carrier_route varchar,
	def_engine_id integer,
	tmp_tank1_gal double precision,
	apparel_womens boolean,
	def_trans_type varchar,
	def_engine_size double precision,
	engine_size_uom varchar,
	firstyearinhome integer,
	http_user_agent varchar,
	homeownerrenter varchar,
	bank_card_holder boolean,
	credit_card_user boolean,
	def_engine_block varchar,
	def_trans_speeds integer,
	estimated_income integer,
	numberofchildren integer,
	inferredcreditscore varchar,
	auto_validation_date timestamp,
	s_auto_validation_date integer,
	def_engine_cylinders integer,
	presence_of_children boolean,
	def_engine_aspiration varchar,
	apparel_womens_plus_sizes boolean,
	gross_vehicle_weight_rating integer,
	number_of_years_in_residence varchar,
	bank_card_presence_in_household boolean,
	credit_card_holder_unknown_type boolean,
	gas_department_retail_card_holder boolean,
	number_of_lines_of_credit_trade_counter integer,
	zip_code varchar,
	page_type varchar
);

alter table fact_smart_pixl_visits owner to postgres;


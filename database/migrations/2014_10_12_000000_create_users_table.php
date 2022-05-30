<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateUsersTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('users', function (Blueprint $table) {
            $table->uuid('uuid')->primary();
            $table->string('code')->unique();
            $table->string('username')->unique();
            $table->string('email')->nullable();
            $table->string('first_name')->nullable();
            $table->string('last_name')->nullable();
            $table->text('bio')->nullable();
            $table->unsignedTinyInteger('type');
            $table->unsignedTinyInteger('covid_flag')->nullable();
            $table->string('country_code')->nullable();
            $table->string('city_code')->nullable();
            $table->string('experience_code')->nullable();
            $table->string('job_code')->nullable();
            $table->unsignedTinyInteger('gender')->nullable();
            $table->string('mobile_number')->nullable();
            $table->string('languages')->nullable();
            $table->string('industries')->nullable();
            $table->string('expertises')->nullable();
            $table->string('skills')->nullable();
            $table->string('password')->nullable();
            $table->string('verify_token')->nullable();
            $table->string('verify_otp')->nullable();
            $table->string('provider')->nullable();
            $table->unsignedTinyInteger('status')->nullable();
            $table->uuid('created_by')->nullable();
            $table->uuid('updated_by')->nullable();
            $table->timestamps();
        });

        Schema::create('user_languages', function (Blueprint $table) {
            $table->uuid('user_uuid');
            $table->string('language_code', 20);
            $table->uuid('created_by')->nullable();
            $table->uuid('updated_by')->nullable();
            $table->timestamps();
            $table->primary(['user_uuid', 'language_code']);
        });
        

        Schema::create('user_skills', function (Blueprint $table) {
            $table->uuid('user_uuid');
            $table->string('skill_code', 20);
            $table->uuid('created_by')->nullable();
            $table->uuid('updated_by')->nullable();
            $table->timestamps();
            $table->primary(['user_uuid', 'skill_code']);
        });

        Schema::create('user_expertise', function (Blueprint $table) {
            $table->uuid('user_uuid');
            $table->string('expertise_code', 20);
            $table->uuid('created_by')->nullable();
            $table->uuid('updated_by')->nullable();
            $table->timestamps();
            $table->primary(['user_uuid', 'expertise_code']);
        });

        // Master data
        Schema::create('m_countries', function (Blueprint $table) {
            $table->string('code', 20)->primary();
            $table->string('parent_code', 20)->nullable();
            $table->string('name');
            $table->uuid('created_by')->nullable();
            $table->uuid('updated_by')->nullable();
            $table->timestamps();
        });

        Schema::create('m_experlence', function (Blueprint $table) {
            $table->string('code', 20)->primary();
            $table->string('name');
            $table->uuid('created_by')->nullable();
            $table->uuid('updated_by')->nullable();
            $table->timestamps();
        });

        Schema::create('m_expertlse', function (Blueprint $table) {
            $table->string('code', 20)->primary();
            $table->string('name');
            $table->uuid('created_by')->nullable();
            $table->uuid('updated_by')->nullable();
            $table->timestamps();
        });

        Schema::create('m_industries', function (Blueprint $table) {
            $table->string('code', 20)->primary();
            $table->string('name');
            $table->uuid('created_by')->nullable();
            $table->uuid('updated_by')->nullable();
            $table->timestamps();
        });

        Schema::create('m_languages', function (Blueprint $table) {
            $table->string('code', 20)->primary();
            $table->string('name');
            $table->uuid('created_by')->nullable();
            $table->uuid('updated_by')->nullable();
            $table->timestamps();
        });

        Schema::create('m_skills', function (Blueprint $table) {
            $table->string('code', 20)->primary();
            $table->string('name');
            $table->uuid('created_by')->nullable();
            $table->uuid('updated_by')->nullable();
            $table->timestamps();
        });

        Schema::create('m_suvery_reason_dislike', function (Blueprint $table) {
            $table->uuid('uuid')->primary();
            $table->string('reason')->nullable();
            $table->unsignedTinyInteger('status')->nullable();
            $table->uuid('created_by')->nullable();
            $table->uuid('updated_by')->nullable();
            $table->timestamps();
        });

        Schema::create('m_walk_format', function (Blueprint $table) {
            $table->uuid('code')->primary();
            $table->string('format')->nullable();
            $table->uuid('created_by')->nullable();
            $table->uuid('updated_by')->nullable();
            $table->timestamps();
        });

        Schema::create('notificaitons', function (Blueprint $table) {
            $table->uuid('uuid')->primary();
            $table->uuid('user_uuid');
            $table->uuid('noti_user_uuid');
            $table->unsignedTinyInteger('type');
            $table->text('message')->nullable();
            $table->unsignedTinyInteger('status')->nullable();
            $table->uuid('created_by')->nullable();
            $table->uuid('updated_by')->nullable();
            $table->timestamps();
        });

        Schema::create('request_walks', function (Blueprint $table) {
            $table->uuid('uuid')->primary();
            $table->uuid('user_request_uuid');
            $table->uuid('user_mentor_uuid');
            $table->timestampTz('request_date');
            $table->text('big_question')->nullable();
            $table->text('personal_message')->nullable();
            $table->text('request_location')->nullable();
            $table->string('log')->nullable();
            $table->string('lat')->nullable();
            $table->text('meetup_at')->nullable();
            $table->uuid('created_by')->nullable();
            $table->uuid('updated_by')->nullable();
            $table->timestamps();
        });

        Schema::create('tribes', function (Blueprint $table) {
            $table->uuid('uuid')->primary();
            $table->string('name');
            $table->string('slug');
            $table->unsignedTinyInteger('status');
            $table->text('logo')->nullable();
            $table->uuid('created_by')->nullable();
            $table->uuid('updated_by')->nullable();
            $table->timestamps();
        });

        Schema::create('user_followes', function (Blueprint $table) {
            $table->uuid('uuid')->primary();
            $table->uuid('user_uuid');
            $table->uuid('follower_uuid');
            $table->timestampTz('date_followed');
            $table->uuid('created_by')->nullable();
            $table->uuid('updated_by')->nullable();
            $table->timestamps();
        });

        Schema::create('user_request_big_quesstions', function (Blueprint $table) {
            $table->uuid('uuid')->primary();
            $table->uuid('user_uuid');
            $table->text('question')->nullable();
            $table->uuid('created_by')->nullable();
            $table->uuid('updated_by')->nullable();
            $table->timestamps();
        });

        Schema::create('user_reviews', function (Blueprint $table) {
            $table->uuid('uuid')->primary();
            $table->uuid('user_reviewer_uuid');
            $table->uuid('user_reviewed_uuid');
            $table->unsignedTinyInteger('rate');
            $table->text('note')->nullable();
            $table->uuid('created_by')->nullable();
            $table->uuid('updated_by')->nullable();
            $table->timestamps();
        });

        Schema::create('user_tribes', function (Blueprint $table) {
            $table->uuid('uuid')->primary();
            $table->uuid('user_uuid');
            $table->uuid('tribe_uuid');
            $table->unsignedTinyInteger('is_leader');
            $table->unsignedTinyInteger('status');
            $table->timestampTz('join_date');
            $table->uuid('created_by')->nullable();
            $table->uuid('updated_by')->nullable();
            $table->timestamps();
        });

        Schema::create('user_walk_histories', function (Blueprint $table) {
            $table->uuid('uuid')->primary();
            $table->uuid('user_uuid');
            $table->uuid('walk_uuid');
            $table->uuid('big_quesstion_id');
            $table->timestampTz('join_date');
            $table->uuid('created_by')->nullable();
            $table->uuid('updated_by')->nullable();
            $table->timestamps();
        });

        Schema::create('walk_chats', function (Blueprint $table) {
            $table->uuid('uuid')->primary();
            $table->uuid('walk_uuid');
            $table->string('conversation_name')->nullable();
            $table->string('conversation_sid')->nullable();
            $table->uuid('created_by')->nullable();
            $table->uuid('updated_by')->nullable();
            $table->timestamps();
        });

        Schema::create('walk_chat_details', function (Blueprint $table) {
            $table->uuid('uuid')->primary();
            $table->uuid('walk_chat_uuid');
            $table->uuid('user_uuid');
            $table->uuid('created_by')->nullable();
            $table->uuid('updated_by')->nullable();
            $table->timestamps();
        });

        Schema::create('walk_reason_dislikes', function (Blueprint $table) {
            $table->uuid('uuid')->primary();
            $table->uuid('user_reviewer_uuid');
            $table->uuid('walk_uuid');
            $table->string('reason');
            $table->text('note');
            $table->uuid('created_by')->nullable();
            $table->uuid('updated_by')->nullable();
            $table->timestamps();
        });

        Schema::create('walk_recurring_settings', function (Blueprint $table) {
            $table->uuid('uuid')->primary();
            $table->uuid('walk_uuid');
            $table->unsignedInteger('recurring_week_number');
            $table->json('recurring_date_number');
            $table->timestampTz('end_by_date');
            $table->unsignedInteger('end_by_number_of_occurrences');
            $table->uuid('created_by')->nullable();
            $table->uuid('updated_by')->nullable();
            $table->timestamps();
        });

        Schema::create('walk_reviews', function (Blueprint $table) {
            $table->uuid('uuid')->primary();
            $table->uuid('user_reviewer_uuid');
            $table->uuid('walk_uuid');
            $table->unsignedTinyInteger('rate')->nullable();
            $table->text('note')->nullable();
            $table->uuid('created_by')->nullable();
            $table->uuid('updated_by')->nullable();
            $table->timestamps();
        });

        Schema::create('walks', function (Blueprint $table) {
            $table->uuid('uuid')->primary();
            $table->text('name');
            $table->text('slug');
            $table->timestampTz('start_date');
            $table->timestampTz('end_date');
            $table->string('location')->nullable();
            $table->string('lat')->nullable();
            $table->string('log')->nullable();
            $table->string('meetup_at')->nullable();
            $table->string('format')->nullable();
            $table->unsignedTinyInteger('is_auto_approve_request')->nullable();
            $table->unsignedTinyInteger('is_reccuring_walk')->nullable();
            $table->unsignedTinyInteger('status')->nullable();
            $table->unsignedTinyInteger('user_create_uuid')->nullable();
            $table->text('location_image')->nullable();
            $table->uuid('created_by')->nullable();
            $table->uuid('updated_by')->nullable();
            $table->timestamps();
        });

        Schema::create('walks_waitlists', function (Blueprint $table) {
            $table->uuid('uuid')->primary();
            $table->uuid('user_uuid');
            $table->uuid('walk_uuid');
            $table->unsignedTinyInteger('status')->nullable();
            $table->text('note')->nullable();
            $table->uuid('created_by')->nullable();
            $table->uuid('updated_by')->nullable();
            $table->timestamps();
        });


    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('users');
    }
}

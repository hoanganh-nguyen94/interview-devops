<?php

namespace App\Console\Commands;

use Illuminate\Console\Command;

use Twilio\Rest\Client as TwilioClient;

class SendSmsOTPCommand extends Command
{
   /**
    * The name and signature of the console command.
    *
    * @var string
    */
   protected $signature = "send:sms-otp";
   /**
    * The console command description.
    *
    * @var string
    */
   protected $description = "This will send a otp when register member";

   protected $eventReminderClient;

   /**
    * Create a new command instance.
    *
    * @return void
    */
   public function __construct()
   {
       parent::__construct();

   }
   /**
    * Execute the console command.
    *
    * @return mixed
    */
   public function handle()
   {
       $this->eventReminderClient->sendEventReminders();
   }
}
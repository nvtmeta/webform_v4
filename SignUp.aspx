<%@ Page Title="signUp" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="SignUp.aspx.cs" Inherits="WebApplication1.SignUp" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <div class="bg-white w-screen font-sans text-gray-900">
  <div class=" ">
    <div class="mx-auto w-full sm:max-w-screen-sm md:max-w-screen-md lg:max-w-screen-lg xl:max-w-screen-xl">
      <div class="mx-2 py-12 text-center md:mx-auto md:w-2/3 md:py-20">
        <h1 class="mb-4 text-3xl font-black leading-4 sm:text-5xl xl:text-6xl">Sign up</h1>
        <div class="text-lg sm:text-xl">
          <div class="">
            <p class="mb-4">Let's do this! Start your free trial by filling in our simple form below. You will be hearing from us soon!</p>
          </div>
        </div>
      </div>
    </div>
  </div>
  <div class="md:w-2/3 mx-auto w-full pb-16 sm:max-w-screen-sm md:max-w-screen-md lg:w-1/3 lg:max-w-screen-lg xl:max-w-screen-xl">
    <form class="shadow-lg mb-4 rounded-lg border border-gray-100 py-10 px-8">
      <div class="mb-4"><label class="mb-2 block text-sm font-bold" for="email">E-mail</label><input class="shadow-sm w-full cursor-text appearance-none rounded border border-gray-300 py-2 px-3 leading-tight outline-none ring-blue-500 focus:ring" id="email" type="email" placeholder="email" required="" /><span class="my-2 block"></span></div>
      <div class="mb-4"><label class="mb-2 block text-sm font-bold" for="phone">Phone</label><input class="shadow-sm w-full cursor-text appearance-none rounded border border-gray-300 py-2 px-3 leading-tight outline-none ring-blue-500 focus:ring" id="phone" type="phone" placeholder="Phone" required="" /><span class="my-2 block"></span></div>
      <div class="mb-4"><label class="mb-2 block text-sm font-bold" for="password">Password</label><input class="shadow-sm w-full cursor-text appearance-none rounded border border-gray-300 py-2 px-3 leading-tight outline-none ring-blue-500 focus:ring" id="password" type="password" placeholder="******************" required="" /></div>
      <div class="mb-4">
        <label class="mb-2 block text-sm font-bold" for="country">Country</label
        ><select class="shadow-sm mb-3 cursor-pointer w-full appearance-none rounded border border-gray-300 py-2 px-3  leading-tight outline-none ring-blue-500 focus:ring" id="country" required="">
          <option value="AF" class="">Afghanistan</option>
          <option value="AL" class="">Albania</option>
          <option value="DZ" class="">Algeria</option>
          <option value="AS" class="">American Samoa</option>
          <option value="AD" class="">Andorra</option>
          <option value="AO" class="">Angola</option>
          <option value="AI" class="">Anguilla</option>
          <option value="AG" class="">Antigua and Barbuda</option>
          <option value="AR" class="">Argentina</option>
          <option value="AM" class="">Armenia</option>
          <option value="AW" class="">Aruba</option>
          <option value="AU" class="">Australia</option>
          <option value="AT" class="">Austria</option>
          <option value="AZ" class="">Azerbaijan</option>
          <option value="BS" class="">Bahamas</option>
          <option value="BH" class="">Bahrain</option>
          <option value="BD" class="">Banglades</option>
          <option value="BB" class="">Barbados</option>
          <option value="BY" class="">Belarus</option>
          <option value="BE" class="">Belgium</option>
          <option value="BZ" class="">Belize</option>
          <option value="BJ" class="">Benin</option>
          <option value="BM" class="">Bermuda</option>
          <option value="BT" class="">Bhutan</option>
          <option value="BO" class="">Bolivia</option>
          <option value="BA" class="">Bosnia-Herzegovina</option>
          <option value="BW" class="">Botswana</option>
          <option value="BV" class="">Bouvet Island</option>
          <option value="BR" class="">Brazil</option>
          <option value="IO" class="">British Indian O. Terr.</option>
          <option value="VG" class="">British Virgin Islands</option>
          <option value="BN" class="">Brunei Darussalam</option>
          <option value="BG" class="">Bulgaria</option>
          <option value="BF" class="">Burkina Faso</option>
          <option value="BI" class="">Burundi</option>
          <option value="KH" class="">Cambodia</option>
          <option value="CM" class="">Cameroon</option>
          <option value="CA" class="">Canada</option>
          <option value="CV" class="">Cape Verde</option>
          <option value="KY" class="">Cayman Islands</option>
          <option value="CF" class="">Central African Rep.</option>
          <option value="TD" class="">Chad</option>
          <option value="CL" class="">Chile</option>
          <option value="CN" class="">China</option>
          <option value="CX" class="">Christmas Island</option>
          <option value="CC" class="">Cocos (Keeling) Islands</option>
          <option value="CO" class="">Colombia</option>
          <option value="KM" class="">Comoros</option>
          <option value="CG" class="">Congo (Brazzaville)</option>
          <option value="CK" class="">Cook Islands</option>
          <option value="CR" class="">Costa Rica</option>
          <option value="HR" class="">Croatia</option>
          <option value="CU" class="">Cuba</option>
          <option value="CY" class="">Cyprus</option>
          <option value="CS" class="">Czech Republic</option>
          <option value="CD" class="">Democratic Republic of Congo (Kinshasa-Zaire)</option>
          <option value="DK" class="">Denmark</option>
          <option value="DJ" class="">Djibouti</option>
          <option value="DM" class="">Dominica</option>
          <option value="DO" class="">Dominican Republic</option>
          <option value="EC" class="">Ecuador</option>
          <option value="EG" class="">Egypt</option>
          <option value="SV" class="">El Salvador</option>
          <option value="ER" class="">Eritrea</option>
          <option value="EE" class="">Estonia</option>
          <option value="ET" class="">Ethiopia</option>
          <option value="EU" class="">European Union</option>
          <option value="FK" class="">Falkland Isl., Malvinas</option>
          <option value="FO" class="">Faroe Islands</option>
          <option value="FJ" class="">Fiji</option>
          <option value="FI" class="">Finland</option>
          <option value="FR" class="">France</option>
          <option value="GF" class="">French Guiana</option>
          <option value="PF" class="">French Polynesia</option>
          <option value="TF" class="">French Southern Terr.</option>
          <option value="GA" class="">Gabon</option>
          <option value="GM" class="">Gambia</option>
          <option value="GE" class="">Georgia</option>
          <option value="DE" class="">Germany</option>
          <option value="GH" class="">Ghana</option>
          <option value="GI" class="">Gibraltar</option>
          <option value="UK" class="">Great Britain - UK</option>
          <option value="GR" class="">Greece</option>
          <option value="GL" class="">Greenland (Denmark)</option>
          <option value="GD" class="">Grenada</option>
          <option value="GP" class="">Guadaloupe</option>
          <option value="GU" class="">Guam (US)</option>
          <option value="GT" class="">Guatemala</option>
          <option value="GG" class="">Guernsey</option>
          <option value="GN" class="">Guinea (Conakry)</option>
          <option value="GW" class="">Guinea Bissau</option>
          <option value="GY" class="">Guyana</option>
          <option value="HT" class="">Haiti</option>
          <option value="HM" class="">Heard and McDonald Isl.</option>
          <option value="HN" class="">Honduras</option>
          <option value="HK" class="">Hong Kong</option>
          <option value="HU" class="">Hungary</option>
          <option value="IS" class="">Iceland</option>
          <option value="IN" class="">India</option>
          <option value="ID" class="">Indonesia</option>
          <option value="IR" class="">Iran</option>
          <option value="IQ" class="">Iraq</option>
          <option value="IE" class="">Ireland</option>
          <option value="IM" class="">Isle of Man</option>
          <option value="IL" class="">Israel</option>
          <option value="IT" class="">Italy</option>
          <option value="CI" class="">Ivory Coast</option>
          <option value="JM" class="">Jamaica</option>
          <option value="JP" class="">Japan</option>
          <option value="JE" class="">Jersey</option>
          <option value="JO" class="">Jordan</option>
          <option value="KZ" class="">Kazakhstan</option>
          <option value="KE" class="">Kenya</option>
          <option value="KI" class="">Kiribati</option>
          <option value="KW" class="">Kuwait</option>
          <option value="KG" class="">Kyrgyz Republic</option>
          <option value="LA" class="">Laos</option>
          <option value="LV" class="">Latvia</option>
          <option value="LB" class="">Lebanon</option>
          <option value="LS" class="">Lesotho</option>
          <option value="LR" class="">Liberia</option>
          <option value="LY" class="">Libya</option>
          <option value="LI" class="">Liechtenstein</option>
          <option value="LT" class="">Lithuania</option>
          <option value="LU" class="">Luxembourg</option>
          <option value="MO" class="">Macau</option>
          <option value="MK" class="">Macedonia</option>
          <option value="MG" class="">Madagascar</option>
          <option value="MW" class="">Malawi</option>
          <option value="MY" class="">Malaysia</option>
          <option value="MV" class="">Maldives</option>
          <option value="ML" class="">Mali</option>
          <option value="MT" class="">Malta</option>
          <option value="MH" class="">Marshall Islands</option>
          <option value="MQ" class="">Martinique</option>
          <option value="MR" class="">Mauritania</option>
          <option value="MU" class="">Mauritius</option>
          <option value="YT" class="">Mayotte</option>
          <option value="MX" class="">Mexico</option>
          <option value="FM" class="">Micronesia</option>
          <option value="MD" class="">Moldova</option>
          <option value="MC" class="">Monaco</option>
          <option value="MN" class="">Mongolia</option>
          <option value="ME" class="">Montenegro</option>
          <option value="MS" class="">Montserrat</option>
          <option value="MA" class="">Morocco</option>
          <option value="MZ" class="">Mozambique</option>
          <option value="MM" class="">Myanmar</option>
          <option value="NA" class="">Namibia</option>
          <option value="NR" class="">Nauru</option>
          <option value="NP" class="">Nepal</option>
          <option value="AN" class="">Netherland Antilles</option>
          <option value="NL" class="">Netherlands</option>
          <option value="NC" class="">New Caledonia</option>
          <option value="NZ" class="">New Zealand</option>
          <option value="NI" class="">Nicaragua</option>
          <option value="NE" class="">Niger</option>
          <option value="NG" class="">Nigeria</option>
          <option value="NU" class="">Niue</option>
          <option value="NF" class="">Norfolk Island</option>
          <option value="KP" class="">North Korea</option>
          <option value="MP" class="">Northern Mariana Isl.</option>
          <option value="NO" class="">Norway</option>
          <option value="OM" class="">Oman</option>
          <option value="PK" class="">Pakistan</option>
          <option value="PW" class="">Palau</option>
          <option value="PS" class="">Palestine</option>
          <option value="PA" class="">Panama</option>
          <option value="PG" class="">Papua New Guinea</option>
          <option value="PY" class="">Paraguay</option>
          <option value="PE" class="">Peru</option>
          <option value="PH" class="">Philippines</option>
          <option value="PN" class="">Pitcairn</option>
          <option value="PL" class="">Poland</option>
          <option value="PT" class="">Portugal</option>
          <option value="PR" class="">Puerto Rico</option>
          <option value="QA" class="">Qatar</option>
          <option value="RE" class="">Reunion</option>
          <option value="RO" class="">Romania</option>
          <option value="RU" class="">Russian Federation</option>
          <option value="RW" class="">Rwanda</option>
          <option value="LC" class="">Saint Lucia</option>
          <option value="PM" class="">Saint Pierre and Miquelon</option>
          <option value="SM" class="">San Marino</option>
          <option value="SA" class="">Saudi Arabia</option>
          <option value="SN" class="">Senegal</option>
          <option value="RS" class="">Serbia</option>
          <option value="SC" class="">Seychelles</option>
          <option value="SL" class="">Sierra Leone</option>
          <option value="SG" class="">Singapore</option>
          <option value="SX" class="">Sint Maarten (Dutch part)</option>
          <option value="SK" class="">Slovakia</option>
          <option value="SI" class="">Slovenia</option>
          <option value="SB" class="">Solomon Islands</option>
          <option value="SO" class="">Somalia</option>
          <option value="ZA" class="">South Africa</option>
          <option value="GS" class="">South Georgia and South Sandwich Islands</option>
          <option value="KR" class="">South Korea</option>
          <option value="SS" class="">South Sudan</option>
          <option value="ES" class="">Spain</option>
          <option value="LK" class="">Sri Lanka</option>
          <option value="SH" class="">St. Helena</option>
          <option value="ST" class="">St. Tome and Principe</option>
          <option value="KN" class="">St.Kitts Nevis Anguilla</option>
          <option value="VC" class="">St.Vincent and Grenadines</option>
          <option value="SD" class="">Sudan</option>
          <option value="SR" class="">Suriname</option>
          <option value="SJ" class="">Svalbard and Jan Mayen Is</option>
          <option value="SZ" class="">Swaziland</option>
          <option value="SE" selected="" class="">Sweden</option>
          <option value="CH" class="">Switzerland</option>
          <option value="SY" class="">Syria</option>
          <option value="TW" class="">Taiwan</option>
          <option value="TJ" class="">Tajikistan</option>
          <option value="TZ" class="">Tanzania</option>
          <option value="TH" class="">Thailand</option>
          <option value="TL" class="">Timor-Leste</option>
          <option value="TG" class="">Togo</option>
          <option value="TK" class="">Tokelau</option>
          <option value="TO" class="">Tonga</option>
          <option value="TT" class="">Trinidad and Tobago</option>
          <option value="TN" class="">Tunisia</option>
          <option value="TR" class="">Turkey</option>
          <option value="TM" class="">Turkmenistan</option>
          <option value="TC" class="">Turks and Caicos Islands</option>
          <option value="TV" class="">Tuvalu</option>
          <option value="UM" class="">US Minor outlying Isl.</option>
          <option value="VI" class="">US Virgin Islands</option>
          <option value="UG" class="">Uganda</option>
          <option value="UA" class="">Ukraine</option>
          <option value="AE" class="">United Arab Emirates</option>
          <option value="US" class="">United States</option>
          <option value="UY" class="">Uruguay</option>
          <option value="UZ" class="">Uzbekistan</option>
          <option value="VU" class="">Vanuatu</option>
          <option value="VA" class="">Vatican City State</option>
          <option value="VE" class="">Venezuela</option>
          <option value="VN" class="">Vietnam</option>
          <option value="WF" class="">Wallis and Futuna Islands</option>
          <option value="EH" class="">Western Sahara</option>
          <option value="WS" class="">Western Samoa</option>
          <option value="YE" class="">Yemen</option>
        </select>
      </div>
      <div class="mb-6">
        <label class="mb-2 flex text-sm"
          ><input type="checkbox" name="accept" class="mr-2" required="" />
          <div class="text-gray-800">
            <p class="">
              I accept the
              <a href="#" class="cursor-pointer text-blue-500 underline">terms of use</a>
              and
              <a href="#" class="cursor-pointer text-blue-500 underline">privacy policy</a>
            </p>
          </div></label
        >
      </div>
      <div class="flex items-center">
        <div class="flex-1"></div>
        <a href="/SignIn" class="cursor-pointer rounded bg-blue-600 py-2 px-8 text-center text-lg font-bold  text-white" >Create account</a>
      </div>
    </form>
  </div>
</div>


</asp:Content>

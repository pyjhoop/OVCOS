<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>

  <!DOCTYPE html>
  <html lang="en">

  <head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    
    <!-- Favicon-->
	<link rel="shortcut icon" type="image/x-icon" href="${pageContext.request.contextPath}/resources/assets/favicon.ico" />
	<link rel="icon" type="image/x-icon" href="${pageContext.request.contextPath}/resources/image/favicon.png" sizes="16x16" />
    
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css"
      integrity="sha384-xOolHFLEh07PJGoPkLv1IbcEPTNtaed2xpHsD9ESMhqIYd0nLMwNLD69Npy4HI+N" crossorigin="anonymous">
    <script src="https://cdn.jsdelivr.net/npm/jquery@3.5.1/dist/jquery.slim.min.js"
      integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj"
      crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/js/bootstrap.bundle.min.js"
      integrity="sha384-Fy6S3B9q64WdZWQUiU+q4/2Lc9npb8tCaSX9FK7E8HnRr0Jz8D6OP9dO5Vg3Q9ct"
      crossorigin="anonymous"></script>
    <link rel="stylesheet" href="resources/css/agreeStyle.css">
    <link rel="stylesheet" href="../../resources/css/agreeStyle.css">

    <script src="https://kit.fontawesome.com/66bc1e54e8.js" crossorigin="anonymous"></script>
    <title>OVCOS - 약관동의</title>

    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css"
      integrity="sha384-rbsA2VBKQhggwzxH7pPCaAqO46MgnOM80zW1RWuH61DGLwZJEdK2Kadq2F9CUG65" crossorigin="anonymous">
    <script src="resources/js/jquery-3.6.3.min.js"></script>
  </head>

  <body>



    <script>
      $(function () {
        $("#lastgroup").remove();
      })


    </script>

    <div id="wrap">

      <div class="popup_area">
        <div class="signin_box">
          <div class="popup_top">

            <div id="x-box"><i class="fa-solid fa-x" onclick="location.href='/Ovcos/views/loginRegister/login.jsp'"></i>
            </div>

            <br><span id="title">OVCOS 가입 약관 동의</span> <br>
          </div>

          <div class="popup_body">
            <div class="checkbox_group">
              <div id="allAgree">
                <table>
                  <tr>
                    <td class="check_all"><input type="checkbox" id="check_all"></td>
                    <td class="check_all">약관 전체 동의</td>
                  </tr>
                </table>
              </div>

              <div id="agree">
                <form action="enrollForm.me" name="frm" method="post" onsubmit="return validate();">
                  <table id="agreeTable">
                    <tr>
                      <td class="checkbox"><input type="checkbox" class="normal" name="admin1" required></td>
                      <td class="ness">필수</td>
                      <td style="padding-right: 120px;">연령(만 14세 이상) 확인</td>
                      <td></td>
                    </tr>
                    <tr>
                      <td class="checkbox"><input type="checkbox" class="normal" name="admin2" required></td>
                      <td class="ness">필수</td>
                      <td id="more">서비스 이용약관 동의</td>
                      <td class="detail" align="center" data-bs-toggle="modal" data-bs-target="#exampleModal1"><i
                          class="fa-solid fa-angle-right"></i></td>
                    </tr>
                    <tr>
                      <td><input type="checkbox" class="normal" name="admin3" required></td>
                      <td class="ness">필수</td>
                      <td>개인정보 수집 및 이용 동의</td>
                      <td class="detail" align="center" data-bs-toggle="modal" data-bs-target="#exampleModal2"><i
                          class="fa-solid fa-angle-right"></i></td>
                    </tr>
                    <tr>
                      <td><input type="checkbox" class="normal" name="admin4" required></td>
                      <td class="ness">필수</td>
                      <td>개인정보 제3자 제공 동의</td>
                      <td class="detail" align="center" data-bs-toggle="modal" data-bs-target="#exampleModal3"><i
                          class="fa-solid fa-angle-right"></i></td>
                    </tr>
                    <tr>
                      <td><input type="checkbox" class="normal" name="admin5" required></td>
                      <td class="ness">필수</td>
                      <td>위치기반 서비스 이용약관</td>
                      <td class="detail" align="center" data-bs-toggle="modal" data-bs-target="#exampleModal4"
                        class="modal-dialog modal-dialog-centered modal-dialog-scrollable"><i
                          class="fa-solid fa-angle-right"></i></td>
                    </tr>
                    <tr>
                      <td><input type="checkbox" id="agree_checkbox" name="checkboxSelect"></td>
                      <td><input type="hidden" class="normal" name="select" value="Y" id="select">선택</td>
                      <td>광고성 정보 수신동의</td>
                      <td class="detail" align="center" data-bs-toggle="modal" data-bs-target="#exampleModal5"
                        style="cursor:pointer;">
                        <i class="fa-solid fa-angle-right"></i>
                      </td>
                    </tr>
                  </table>



                  <div id="info">

                    인증번호는 이메일로 전송되며, 이메일 미인증 시 가입이 불가능합니다. <br>
                    전체 동의는 필수 및 선택정보에 대한 동의도 포함되어 있으며, 개별적으로도 동의를 선택하실 수 있습니다.
                    선택항목에 대한 동의를 거부하는 경우에도 서비스 이용이 가능합니다. <br>
                    
                    '화살표 버튼'을 누르면 관련 내용을 확인할 수 있습니다.
                    
                  </div>
                  <button type="submit" class="next_btn">다음</button>
                </form>
              </div>
            </div>


            <div>
            </div>

          </div>

        </div>
      </div>

    </div>

    <script>
    $(".checkbox_group").on("click", "#check_all", function () {
    	  var checked = $(this).is(":checked");

    	  if (checked) {
    	    $(this).parents(".checkbox_group").find('input').prop("checked", true);
    	  } else {
    	    $(this).parents(".checkbox_group").find('input').prop("checked", false);
    	  }
    	});

    
    
    $(".checkbox_group").on('click', 'input:not(#check_all)', function () {
    	  var group = $(this).parents(".checkbox_group");
    	  var all_checked = group.find('input:not(#check_all)').length == group.find('input:not(#check_all):checked').length;
    	  group.find("#check_all").prop("checked", all_checked);
    	}); 
    	
    	

    </script>
    <!-- Modal -->
    <div class="modal fade" id="exampleModal1" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
      <div class="modal-dialog modal-lg">
        <div class="modal-content">
          <div class="modal-header">
            <h5 class="modal-title" id="exampleModalLabel">서비스 이용약관 동의</h5>
            <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
          </div>
          <div class="modal-body" style="height:400px; overflow-y:scroll; padding-left:10px;">
            <h5>제1조(목적)</h5>
            <p>
              이 약관은 OVCOS (이하 '회사' 라고 합니다)가 제공하는 제반 서비스의 이용과 관련하여 회사와 회원과의 권리, 의무 및 책임사항, 기타 필요한 사항을 규정함을 목적으로 합니다.
            </p>


            <h5>제2조(정의)</h5>


            <p>
              이 약관에서 사용하는 주요 용어의 정의는 다음과 같습니다.
            </p>

            <p>
              '서비스'라 함은 구현되는 단말기(PC, TV, 휴대형단말기 등의 각종 유무선 장치를 포함)와 상관없이 '이용자'가 이용할 수 있는 회사가 제공하는 제반 서비스를 의미합니다.
              '이용자'란 이 약관에 따라 회사가 제공하는 서비스를 받는 '개인회원' , '기업회원' 및 '비회원'을 말합니다.
              '개인회원'은 회사에 개인정보를 제공하여 회원등록을 한 사람으로, 회사로부터 지속적으로 정보를 제공받고 '회사'가 제공하는 서비스를 계속적으로 이용할 수 있는 자를 말합니다.
              '기업회원'은 회사에 기업정보 및 개인정보를 제공하여 회원등록을 한 사람으로, 회사로부터 지속적으로 정보를 제공받고 회사가 제공하는 서비스를 계속적으로 이용할 수 있는 자를 말합니다.
              '비회원'은 회원가입 없이 회사가 제공하는 서비스를 이용하는 자를 말합니다.
              '아이디(ID)'라 함은 회원의 식별과 서비스이용을 위하여 회원이 정하고 회사가 승인하는 문자 또는 문자와 숫자의 조합을 의미합니다.<br>
              '비밀번호'라 함은 회원이 부여받은 아이디와 일치되는 회원임을 확인하고 비밀의 보호를 위해 회원 자신이 정한 문자(특수문자 포함)와 숫자의 조합을 의미합니다.
              '콘텐츠'란 정보통신망법의 규정에 따라 정보통신망에서 사용되는 부호 ·문자·음성·음향·이미지 또는 영상 등으로 정보 형태의 글, 사진, 동영상 및 각종 파일과 링크 등을 말합니다.
            </p>


            <h5>제3조(약관 외 준칙)</h5>

            <p>이 약관에서 정하지 아니한 사항에 대해서는 법령 또는 회사가 정한 서비스의 개별약관, 운영정책 및 규칙 등(이하 세부지침)의 규정에 따릅니다. 또한 본 약관과 세부지침이 충돌할 경우에는
              세부지침에 따릅니다.</p>


            <h5>제4조(약관의 효력과 변경)</h5>

            <p>이 약관은 OVCOS(이)가 제공하는 모든 인터넷서비스에 게시하여 공시합니다. 회사는 '전자상거래등에서의 소비자보호에 관한 법률(이하 '전자상거래법'이라 함)', '약관의 규제에 관한
              법률(이하' 약관규제법'이라 함)', '정보통신망 이용촉진 및 정보보호 등에 관한 법률(이하 '정보통신망법'이라 함)' 등 본 서비스와 관련된 법령에 위배되지 않는 범위에서 이 약관을 변경할
              수 있으며, 회사는 약관이 변경되는 경우에 변경된 약관의 내용과 시행일을 정하여, 그 시행일로부터 최소 7일 (이용자에게 불리하거나 중대한 사항의 변경은 30일) 이전부터 시행일 후 상당한
              기간 동안 공지하고, 기존 이용자에게는 변경된 약관, 적용일자 및 변경사유(변경될 내용 중 중요사항에 대한 설명을 포함)를 별도의 전자적 수단(전자우편, 문자메시지, 서비스 내 전자쪽지발송,
              알림 메시지를 띄우는 등의 방법)으로 개별 통지합니다. 변경된 약관은 공지하거나 통지한 시행일로부터 효력이 발생합니다.</p>
            <p>회사가 제1항에 따라 개정약관을 공지 또는 통지하는 경우 '변경에 동의하지 아니한 경우 공지일 또는 통지를 받은 날로부터 7일(이용자에게 불리하거나 중대한 사항의 변경인 경우에는 30일)
              내에 계약을 해지할 수 있으며, 계약해지의 의사표시를 하지 아니한 경우에는 변경에 동의한 것으로 본다.' 라는 취지의 내용을 함께 통지합니다.</p>
            <p>이용자가 제2항의 공지일 또는 통지를 받은 날로부터 7일(또는 이용자에게 불리하거나 중대한 사항의 변경인 경우에는 30일)내에 변경된 약관에 대해 거절의 의사를 표시하지 않았을 때에는 본
              약관의 변경에 동의한 것으로 간주합니다. </p>


            <h5>제5조(이용자에 대한 통지)</h5>

            <p>회사는 이 약관에 별도 규정이 없는 한 이용자에게 전자우편, 문자메시지(SMS), 전자쪽지, 푸쉬(Push)알림 등의 전자적 수단을 이용하여 통지할 수 있습니다.</p> 
            <p>회사는 이용자 전체에 대한 통지의 경우 7일 이상 회사가 운영하는 웹사이트 내의 게시판에 게시함으로써 제1항의 통지에 갈음할 수 있습니다. 다만, 이용자 본인의 거래와 관련하여 중대한
              영향을 미치는 사항에 대하여는 제1항의 개별 통지를 합니다.</p>
            <p>회사는 이용자의 연락처 미기재, 변경 후 미수정, 오기재 등으로 인하여 개별 통지가 어려운 경우에 한하여 전항의 공지를 함으로써 개별 통지를 한 것으로 간주합니다.</p>


            <h5>제6조(이용계약의 체결)</h5>

            <p>이용계약은 다음의 경우에 체결됩니다.</p>
            <p>이용자가 회원으로 가입하고자 하는 경우 이용자가 약관의 내용에 대하여 동의를 한 다음 회원가입신청을 하고 회사가 이러한 신청에 대하여 승낙한 때</p>
            <p>이용자가 회원 가입 없이 이용할 수 있는 서비스에 대하여 회원 가입의 신청없이 서비스를 이용하고자 하는 경우에는 회사 서비스 이용을 위해 결제하는 때</p>
            <p>이용자가 회원가입 없이 이용할 수 있는 서비스에 대하여 회원가입의 신청없이 무료 서비스를 이용하고자 하는 경우에는 그 무료 서비스와 관련된 사항의 저장 등 부가서비스를 이용하면서 위 1호
              및 2호의 절차를 진행한 때</p>


            <h5>제7조(회원가입에 대한 승낙)</h5>

            <p>회사는 이용계약에 대한 요청이 있을 때 서비스 이용을 승낙함을 원칙으로 합니다.</p> 
            <p>전항에도 불구하고, 다음 각호의 사유에 해당하는 경우 회사는 회원가입을 보류하거나 거절하는 등 제한할 수 있습니다.</p>
            <p>가입신청자가 이 약관에 의하여 이전에 회원자격을 상실한 적이 있는 경우(단, 회사의 재가입 승낙을 얻은 경우에는 예외로 함)</p>
            <p>실명이 아니거나 타인의 명의를 도용한 경우</p>
            <p>회사가 정하는 필수정보를 누락하거나 허위로 기재한 경우</p>
            <p>만 14세 미만의 아동, 만 19세 미만의 미성년자, 피한정후견인, 피성년후견인이 법정대리인의 동의를 얻지 않은 경우</p>
            <p>이용자의 귀책사유로 인하여 승인이 불가능하거나 기타 이 약관 등 회사가 규정한 운영원칙을 위반한 경우 </p>
            <p>신용정보의 이용과 보호에 관한 법률에 따라 PC통신, 인터넷서비스의 신용불량자로 등록되어 있는 경우</p>
            <p>정보통신윤리위원회에 PC통신, 인터넷서비스의 불량이용자로 등록되어 있는 경우</p>
            <p>이미 사용 중인 회원정보 또는 공서양속을 저해하는 아이디를 사용하고자 하는 경우</p>
            <p>제1항에 따른 신청에 있어 회사는 서비스 제공에 필요한 경우 전문기관을 통한 실명확인 및 본인인증을 요청할 수 있습니다.</p>
            <p>회사는 서비스 관련 설비의 여유가 없거나, 기술상 또는 업무상 문제가 있는 경우에는 승낙을 유보할 수 있습니다.</p>
            <p>이용계약의 성립 시기는 제6조 제1호의 경우에는 회사가 가입완료를 신청절차 상에서 표시한 시점, 제6조 제2호의 경우에는 결제가 완료되었다는 표시가 된 시점으로 합니다.</p>
            <p>회사는 회원에 대해 회사정책에 따라 등급별로 구분하여 이용시간, 이용횟수, 서비스 메뉴 등을 세분하여 이용에 차등을 둘 수 있습니다.</p>
            <p>회사는 회원에 대하여 '영화및비디오물의진흥에관한법률' 및 '청소년보호법' 등에 따른 등급 및 연령 준수를 위하여 이용제한이나 등급별 제한을 둘 수 있습니다.</p>


            <h5>제8조(회원정보의 변경)</h5>

            <p>회원은 개인정보관리화면을 통하여 언제든지 본인의 개인정보를 열람하고 수정할 수 있습니다. 다만, 서비스 관리를 위해 필요한 실명, 아이디 등은 수정이 불가능합니다.</p>
            <p>회원은 회원가입신청 시 기재한 사항이 변경되었을 경우 온라인으로 수정을 하거나 전자우편 기타 방법으로 회사에 대하여 그 변경사항을 알려야 합니다.</p>
            <p>제2항의 변경사항을 회사에 알리지 않아 발생한 불이익에 대하여는 회원에게 책임이 있습니다.</p>


            <h5>제9조(회원정보의 관리 및 보호)</h5>

            <p>회원의 아이디(ID)와 비밀번호에 관한 관리책임은 회원에게 있으며, 이를 제3자가 이용하도록 하여서는 안 됩니다.</p>
            <p>회사는 회원의 아이디(ID)가 개인정보 유출 우려가 있거나, 반사회적 또는 공서양속에 어긋나거나, 회사 또는 서비스의 운영자로 오인할 우려가 있는 경우, 해당 아이디(ID)의 이용을 제한할
              수 있습니다.</p>
            <p>회원은 아이디(ID) 및 비밀번호가 도용되거나 제3자가 사용하고 있음을 인지한 경우에는 이를 즉시 회사에 통지하고 안내에 따라야 합니다.</p>
            <p>제3항의 경우 해당 회원이 회사에 그 사실을 통지하지 않거나, 통지하였으나 회사의 안내에 따르지 않아 발생한 불이익에 대하여 회사는 책임지지 않습니다.</p>


            <h5>제10조(회사의 의무)</h5>

            <p>회사는 계속적이고 안정적인 서비스의 제공을 위하여 설비에 장애가 생기거나 멸실된 때에는 이를 지체 없이 수리 또는 복구하며, 다음 각 호의 사유 발생 시 부득이한 경우 예고 없이 서비스의
              전부 또는 일부의 제공을 일시 중지할 수 있습니다. 이 경우 그 사유 및 중지 기간 등을 이용자에게 지체 없이 사후 공지합니다.</p>
            <p>시스템의 긴급점검, 증설, 교체, 시설의 보수 또는 공사를 하기 위하여 필요한 경우</p>
            <p>새로운 서비스를 제공하기 위하여 시스템교체가 필요하다고 판단되는 경우</p>
            <p>시스템 또는 기타 서비스 설비의 장애, 유무선 Network 장애 등으로 정상적인 서비스 제공이 불가능할 경우</p>
            <p>국가비상사태, 정전, 불가항력적 사유로 인한 경우</p>
            <p>회사는 이용계약의 체결, 계약사항의 변경 및 해지 등 이용자와의 계약관련 절차 및 내용 등에 있어 이용자에게 편의를 제공하도록 노력합니다.</p>
            <p>회사는 대표자의 성명, 상호, 주소, 전화번호, 모사전송번호(FAX), 통신판매업 신고번호, 이용약관, 개인정보취급방침 등을 이용자가 쉽게 알 수 있도록 온라인 서비스 초기화면에
              게시합니다.</p>


            <h5>제11조(개인정보보호)</h5>

            <p>회사는 이용자들의 개인정보를 중요시하며, 정보통신망 이용촉진 및 정보보호 등에 관한 법률, 개인정보보호법 등 관련 법규를 준수하기 위해 노력합니다. 회사는 개인정보보호정책을 통하여 이용자가
              제공하는 개인정보가 어떠한 용도와 방식으로 이용되고 있으며 개인정보보호를 위해 어떠한 조치가 취해지고 있는지 알려드립니다.</p>
            <p>회사는 최종 사용일로부터 연속하여 1년 동안 서비스 사용 이력이 없는 경우 '개인정보보호법' 및 같은 법 시행령의 규정에 따라 이용자정보를 다른 이용자의 개인정보와 분리하여 별도로 저장 및
              관리할 수 있습니다. 이때 분리 저장된 이용자의 개인정보는 이용자가 회원탈퇴신청 또는 개인정보삭제 요청을 할때까지 보관됩니다.</p> 
            <p>회사가 이용자의 개인정보의 보호 및 사용에 대해서 관련 법규 및 회사의 개인정보처리방침을 적용합니다. 다만, 회사에서 운영하는 웹 사이트 등에서 링크된 외부 웹페이지에서는 회사의
              개인정보처리방침이 적용되지 않습니다.</p>


            <h5>제12조(이용자의 의무)</h5>

            <p>이용자는 이용자가입을 통해 이용신청을 하는 경우 사실에 근거하여 신청서를 작성해야 합니다. 이용자가 허위, 또는 타인의 정보를 등록한 경우 회사에 대하여 일체의 권리를 주장할 수 없으며,
              회사는 이로 인하여 발생한 손해에 대하여 책임을 부담하지 않습니다.</p>
            <p>이용자는 본 약관에서 규정하는 사항과 기타 회사가 정한 제반 규정, 회사가 공지하는 사항을 준수하여야 합니다.  또한 이용자는 회사의 업무를 방해하는 행위 및 회사의 명예를 훼손하는 행위를
              하여서는 안 됩니다.</p>
            <p>이용자는 주소, 연락처, 전자우편 주소 등 회원정보가 변경된 경우 즉시 온라인을 통해 이를 수정해야 합니다. 이 때 변경된 정보를 수정하지 않거나 수정이 지연되어 발생하는 책임은 이용자가
              지게 됩니다.</p>
            <p>이용자는 이용자에게 부여된 아이디와 비밀번호를 직접 관리해야 합니다. 이용자의 관리 소홀로 발생한 문제는 회사가 책임을 부담하지 않습니다.</p>
            <p>이용자가 아이디, 닉네임, 기타 서비스 내에서 사용되는 명칭 등을 선정할 때에는 다음 각 호에 해당하는 행위를 해서는 안 됩니다.</p>
            <p>회사가 제공하는 서비스의 공식 운영자를 사칭하거나 이와 유사한 명칭을 사용하여 다른 이용자에게 혼란을 주는 행위</p>
            <p>선정적이고 음란한 내용이 포함된 명칭을 사용하는 행위</p>
            <p>제3자의 상표권, 저작권 등 권리를 침해할 가능성이 있는 명칭을 사용하는 행위</p>
            <p>제3자의 명예를 훼손하거나, 그 업무를 방해할 가능성이 있는 명칭을 사용하는 행위</p>
            <p>기타 반사회적이고 관계법령에 저촉되는 내용이 포함된 명칭을 사용하는 행위</p>
            <p>이용자는 회사의 명시적 동의가 없는 한 서비스 이용 권한, 기타 이용 계약상의 지위에 대하여 매도, 증여, 담보제공 등 처분행위를 할 수 없습니다.  </p>
            <p>본 조와 관련하여 서비스 이용에 있어 주의사항 등 그 밖의 자세한 내용은 운영정책으로 정하며, 이용자가 서비스 이용약관 및 운영정책을 위반하는 경우 서비스 이용제한, 민형사상의 책임 등
              불이익이 발생할 수 있습니다.</p>


            <h5>제13조(서비스의 제공)</h5>

            <p>회사의 서비스는 연중무휴, 1일 24시간 제공을 원칙으로 합니다. 다만 회사 시스템의 유지 보수를 위한 점검, 통신장비의 교체 등 특별한 사유가 있는 경우 서비스의 전부 또는 일부에 대하여
              일시적인 제공 중단이 발생할 수 있습니다.</p> 
            <p>회사가 제공하는 개별 서비스에 대한 구체적인 안내사항은 개별 서비스 화면에서 확인할 수 있습니다. </p>
            <p>회사가 제공하는 서비스의 내용은 다음과 같습니다.</p>
            <p>위치 기반 러닝 코스를 추천하는 서비스</p>
            <p>회원 정보 및 이용 내역에 따른 서비스</p>
            <p>웹페이지 등을 이용하여 제공되는 서비스</p>
            <p>기타 이용자의 편의를 위하여 제공되는 서비스</p>


            <h5>제14조(서비스의 제한 등)</h5>

            <p>회사는 전시, 사변, 천재지변 또는 이에 준하는 국가비상사태가 발생하거나 발생할 우려가 있는 경우와 전기통신사업법에 의한 기간통신사업자가 전기통신서비스를 중지하는 등 부득이한 사유가 있는
              경우에는 서비스의 전부 또는 일부를 제한하거나 중지할 수 있습니다.</p>
            <p>무료서비스는 전항의 규정에도 불구하고, 회사의 운영정책 등의 사유로 서비스의 전부 또는 일부가 제한되거나 중지될 수 있으며, 유료로 전환될 수 있습니다.</p>
            <p>회사는 서비스의 이용을 제한하거나 정지하는 때에는 그 사유 및 제한기간, 예정 일시 등을 지체없이 이용자에게 알립니다.</p>
            <p>회사는 사전에 결제정보를 입력 받고, 무료로 제공중인 서비스를 유료로 전환할 경우, 그 사유와 유료 전환 예정 일시를 통지하고 유료 전환에 대한 이용자의 동의를 받습니다.</p>


            <h5>제15조(서비스의 해제·해지 및 탈퇴 절차)</h5>

            <p>이용자가 이용 계약을 해지하고자 할 때는 언제든지 홈페이지 상의 이용자 탈퇴 신청을 통해 이용계약 해지를 요청할 수 있습니다. 단, 신규가입 후 일정 시간 동안 서비스 부정이용 방지 등의
              사유로 즉시 탈퇴가 제한될 수 있습니다.
            <p>회사는 이용자가 본 약관에서 정한 이용자의 의무를 위반한 경우 등 비정상적인 이용 또는 부당한 이용과 이용자 금지프로그램 사용하는 경우 또는 타인의 명예를 훼손하거나 모욕하는 방송과
              게시물을 작성한 경우 이러한 행위를 금지하거나 삭제를 요청하였음에도 불구하고 최초의 금지 또는 삭제 요청을 포함하여 2회 이상 누적되는 경우 이용자에게 통지하고, 계약을 해지할 수 있습니다.
            <p>회사는 이용자의 청약철회, 해제 또는 해지의 의사표시를 수신한 후 그 사실을 이용자에게 회신합니다. 회신은 이용자가 회사에 대하여 통지한 방법 중 하나에 의하고, 이용자가 회사에 대하여
              통지한 연락처가 존재하지 않는 경우에는 회신하지 않을 수 있습니다.


            <h5>제16조(손해배상)</h5>

            <p>회사 또는 이용자는 상대방의 귀책에 따라 손해가 발생하는 경우 손해배상을 청구할 수 있습니다. 다만, 회사는 무료서비스의 장애, 제공 중단, 보관된 자료 멸실 또는 삭제, 변조 등으로 인한
              손해에 대하여는 배상책임을 부담하지 않습니다. 
            <p>회사가 제공하는 서비스의 이용과 관련하여 회사의 운영정책 및 개인 정보 보호정책, 기타 서비스별 이용약관에서 정하는 내용에 위반하지 않는 한 회사는 어떠한 손해에 대하여도 책임을 부담하지
              않습니다.  


            <h5>제17조(면책사항)</h5>

            <p>회사는 천재지변 또는 이에 준하는 불가항력으로 인하여 서비스를 제공할 수 없는 경우에는 서비스 제공에 관한 책임을 지지 않습니다.</p>
            <p>회사는 이용자의 귀책사유로 인한 서비스 이용장애에 대하여 책임을 지지 지 않습니다.</p>
            <p>회사는 이용자가 서비스를 이용하며 기대하는 수익을 얻지 못한 것에 대하여 책임 지지 않으며 서비스를 통하여 얻은 자료로 인한 손해 등에 대하여도 책임을 지지 않습니다. </p>
            <p>회사는 이용자가 웹페이지에 게재한 내용의 신뢰도, 정확성 등 내용에 대해서는 책임지지 않으며, 이용자 상호간 또는 이용자와 제3자 상호간 서비스를 매개로 발생한 분쟁에 개입하지 않습니다. 
            </p>


            <h5>제18조(정보의 제공 및 광고의 게재)</h5>

            <p>회사는 이용자가 서비스 이용 중 필요하다고 인정되는 각종 정보 및 광고를 배너 게재, 전자우편(E-Mail), 휴대폰 메세지, 전화, 우편 등의 방법으로 이용자에게 제공(또는 전송)할 수
              있습니다. 다만, 이용자는 이를 원하지 않을 경우 회사가 제공하는 방법에 따라 수신을 거부할 수 있습니다.</p>
            <p>이용자가 수신 거부를 한 경우에도 이용약관, 개인정보보호정책, 기타 이용자의 이익에 영향을 미칠 수 있는 중요한 사항의 변경 등 '정보통신망이용촉진 및 정보보호 등에 관한 법률'에서 정하는
              사유 등 이용자가 반드시 알고 있어야 하는 사항에 대하여는 전자우편 등의 방법으로 정보를 제공할 수 있습니다. </p>
            <p>제1항 단서에 따라 이용자가 수신 거부 조치를 취한 경우 이로 인하여 회사가 거래 관련 정보, 이용 문의에 대한 답변 등의 정보를 전달하지 못한 경우 회사는 이로 인한 책임이 없습니다.
            </p>
            <p>회사는 '정보통신망법' 시행령에 따라 2년마다 영리 목적의 광고정 정보 전송에 대한 수신동의 여부를 확인합니다. </p>
            <p>회사는 광고주의 판촉 활동에 이용자가 참여하거나, 거래의 결과로서 발생하는 손실 또는 손해에 대하여는 책임을 지지 않습니다.</p>


            <h5>제19조(권리의 귀속)</h5>

            <p>회사가 제공하는 서비스에 대한 저작권 등 지식재산권은 회사에 귀속 됩니다. </p>
            <p>회사는 서비스와 관련하여 이용자에게 회사가 정한 조건 따라 회사가 제공하는 서비스를 이용할 수 있는 권한만을 부여하며, 이용자는 이를 양도, 판매, 담보제공 하는 등 처분행위를 할 수
              없습니다.</p>
            <p>제1항의 규정에도 불구하고 이용자가 직접 작성한 콘텐츠 및 회사의 제휴계약에 따라 제공된 저작물에 대한 지식재산권은 회사에 귀속되지 않습니다.</p> 


            <h5>제20조(콘텐츠의 관리)</h5>

            <p>회원이 작성 또는 창작한 콘텐츠가 '개인정보보호법' 및 '저작권법' 등 관련 법에 위반되는 내용을 포함하는 경우, 관리자는 관련 법이 정한 절차에 따라 해당 콘텐츠의 게시중단 및 삭제 등을
              요청할 수 있으며, 회사는 관련 법에 따라 조치를 취하여야 합니다.</p>
            <p>회사는 전항에 따른 권리자의 요청이 없는 경우라도 권리침해가 인정될 만한 사유가 있거나 기타 회사 정책 및 관련 법에 위반되는 경우에는 관련 법에 따라 해당 콘텐츠에 대해 임시조치 등을
              취할 수 있습니다.</p>


            <h5>제21조(콘텐츠의 저작권)</h5>

            <p>이용자가 서비스 내에 게시한 콘텐츠의 저작권은 해당 콘텐츠의 저작자에게 귀속됩니다.</p>
            <p>제1항에 불구하고 회사는 서비스의 운영, 전시, 전송, 배포, 홍보 등의 목적으로 별도의 허락 없이 무상으로 저작권법 및 공정한 거래관행에 합치되는 범위 내에서 다음 각 호와 같이 회원이
              등록한 콘텐츠를 사용할 수 있습니다. </p>
            <p>서비스 내에서 이용자가 작성한 콘텐츠의 복제, 수정, 전시, 전송, 배포 등 저작권을 침해하지 않는 범위 내의 2차적저작물 또는 편집 저작물 작성을 위한 사용. 다만, 해당 콘텐츠를 등록한
              이용자가 해당 콘텐츠의 삭제 또는 사용 중지를 요청하는 경우 회사는 관련 법에 따라 보존해야하는 사항을 제외하고 관련 콘텐츠를 모두 삭제 또는 사용중지합니다.</p>
            <p>미디어, 통신사 등을 통한 홍보목적으로 이용자의 콘텐츠를 제공, 전시하도록 하는 등의 사용.</p>


            <h5>제22조(관할법원 및 준거법)</h5>

            <p>서비스와 관련하여 분쟁이 발생한 경우 관할법원은 민사소송법에 따른 관할법원으로 정하며, 준거법은 대한민국의 법령을 적용합니다.</p>


            <h5>부 칙</h5>

            <h6>제1조(시행일)</h6>
            <p>본 약관은 2023.03.10부터 시행됩니다.</p> 

          </div>
          <div class="modal-footer">
            <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">닫기</button>
          </div>
        </div>
      </div>
    </div>
    <div class="modal fade" id="exampleModal2" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
      <div class="modal-dialog modal-lg">
        <div class="modal-content">
          <div class="modal-header">
            <h5 class="modal-title" id="exampleModalLabel">개인정보 수집 및 이용 동의</h5>
            <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
          </div>
          <div class="modal-body" style="height:400px; overflow-y:scroll; padding-left:10px;">
            <p> OVCOS(이하 '회사'라고 합니다)은(는) 개인정보보호법 등 관련 법령상의 개인정보보호 규정을 준수하며 귀하의 개인정보보호에 최선을 다하고 있습니다. 회사는 개인정보보호법에 근거하여
              다음과 같은 내용으로 개인정보를 수집 및 처리하고자 합니다.</p>
            <p>다음의 내용을 자세히 읽어보시고 모든 내용을 이해하신 후에 동의 여부를 결정해주시기 바랍니다.</p>


            <h5>제1조(개인정보 수집 및 이용 목적)</h5>
            <p>이용자가 제공한 모든 정보는 다음의 목적을 위해 활용하며, 목적 이외의 용도로는 사용되지 않습니다.</p>
            <p>- 본인확인</p>


            <h5>제2조(개인정보 수집 및 이용 항목)</h5>
            <p>회사는 개인정보 수집 목적을 위하여 다음과 같은 정보를 수집합니다.</p>
            <p>- 성명, 주소, 이메일 및 생년월일</p>


            <h5>제3조(개인정보 보유 및 이용 기간)</h5>
            <p>수집한 개인정보는 수집·이용 동의일로부터  개인정보 수집·이용 목적을 달성할 때까지  보관 및 이용합니다.</p>
            <p>개인정보 보유기간의 경과, 처리목적의 달성 등 개인정보가 불필요하게 되었을 때에는 지체없이 해당 개인정보를 파기합니다.</p>


            <h5>제4조(개인정보의 제3자 제공)</h5>
            <p>회사는 개인정보보호법에 근거하여 다음과 같은 내용으로 개인정보를 제3자에게 제공하고자 합니다.</p>

          </div>
          <div class="modal-footer">
            <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">닫기</button>
          </div>
        </div>
      </div>
    </div>
    <div class="modal fade" id="exampleModal3" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
      <div class="modal-dialog modal-lg">
        <div class="modal-content">
          <div class="modal-header">
            <h5 class="modal-title" id="exampleModalLabel">개인정보 제3자 제공 동의</h5>
            <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
          </div>
          <div class="modal-body" style="height:400px; overflow-y:scroll; padding-left:10px;">
            <h5>제1조(목적)</h5>
            <p>OVCOS(이하 ‘회사'라고 함)는 회사가 제공하고자 하는 서비스(이하 ‘회사 서비스’)를 이용하는 개인(이하 ‘이용자’ 또는 ‘개인’)의 정보(이하 ‘개인정보’)를 보호하기 위해,
              개인정보보호법, 정보통신망 이용촉진 및 정보보호 등에 관한 법률(이하 '정보통신망법') 등 관련 법령을 준수하고, 서비스 이용자의 개인정보 보호 관련한 고충을 신속하고 원활하게 처리할 수
              있도록 하기 위하여 다음과 같이 개인정보처리방침(이하 ‘본 방침’)을 수립합니다.</p>


            <h5>제2조(개인정보 처리의 원칙)</h5>
            <p>개인정보 관련 법령 및 본 방침에 따라 회사는 이용자의 개인정보를 수집할 수 있으며 수집된 개인정보는 개인의 동의가 있는 경우에 한해 제3자에게 제공될 수 있습니다. 단, 법령의 규정 등에
              의해 적법하게 강제되는 경우 회사는 수집한 이용자의 개인정보를 사전에 개인의 동의 없이 제3자에게 제공할 수도 있습니다.</p>


            <h5>제3조(본 방침의 공개)</h5>
            <p>회사는 이용자가 언제든지 쉽게 본 방침을 확인할 수 있도록 회사 홈페이지 첫 화면 또는 첫 화면과의 연결화면을 통해 본 방침을 공개하고 있습니다.</p>
            <p>회사는 제1항에 따라 본 방침을 공개하는 경우 글자 크기, 색상 등을 활용하여 이용자가 본 방침을 쉽게 확인할 수 있도록 합니다.</p>


            <h5>제4조(본 방침의 변경)</h5>
            <p>본 방침은 개인정보 관련 법령, 지침, 고시 또는 정부나 회사 서비스의 정책이나 내용의 변경에 따라 개정될 수 있습니다.v
            <p>회사는 제1항에 따라 본 방침을 개정하는 경우 다음 각 호 하나 이상의 방법으로 공지합니다.</p>
            <p>회사가 운영하는 인터넷 홈페이지의 첫 화면의 공지사항란 또는 별도의 창을 통하여 공지하는 방법</p>
            <p>서면·모사전송·전자우편 또는 이와 비슷한 방법으로 이용자에게 공지하는 방법</p>
            <p>회사는 제2항의 공지는 본 방침 개정의 시행일로부터 최소 7일 이전에 공지합니다. 다만, 이용자 권리의 중요한 변경이 있을 경우에는 최소 30일 전에 공지합니다.</p>


            <h5>제5조(회원 가입을 위한 정보)</h5>
            <p>회사는 이용자의 회사 서비스에 대한 회원가입을 위하여 다음과 같은 정보를 수집합니다.</p>
            <p>필수 수집 정보: 이메일 주소, 비밀번호, 이름, 닉네임 및 생년월일</p>
            <p>선택 수집 정보: 프로필 사진 </p>


            <h5>제6조(본인 인증을 위한 정보)</h5>
            <p>회사는 이용자의 본인인증을 위하여 다음과 같은 정보를 수집합니다.</p>
            <p>필수 수집 정보: 이메일 주소 및 이름 </p>


            <h5>제7조(회사 서비스 제공을 위한 정보)</h5>
            <p>회사는 이용자에게 회사의 서비스를 제공하기 위하여 다음과 같은 정보를 수집합니다.</p>
            <p>필수 수집 정보: 아이디, 이메일 주소, 이름 및 생년월일</p>


            <h5>제8조(서비스 이용 및 부정 이용 확인을 위한 정보)</h5>
            <p>회사는 이용자의 서비스 이용 및 부정이용의 확인 및 분석을 위하여 다음과 같은 정보를 수집합니다.</p>
            <p>필수 수집 정보: 서비스 이용기록, 쿠키, 접속지 정보 및 기기정보</p>
            <p>※ 부정이용 : 회원탈퇴 후 재가입, 상품구매 후 구매취소 등을 반복적으로 행하는 등 회사가 제공하는 할인쿠폰, 이벤트 혜택 등의 경제상 이익을 불·편법적으로 수취하는 행위, 이용약관
              등에서 금지하고 있는 행위, 명의도용 등의 불·편법행위 등을 말합니다. 수집되는 정보는 회사 서비스 이용에 따른 통계∙분석에 이용될 수 있습니다.</p>


            <h5>제9조(개인정보 수집 방법)</h5>
            <p>회사는 다음과 같은 방법으로 이용자의 개인정보를 수집합니다.</p>
            <p>이용자가 회사의 홈페이지에 자신의 개인정보를 입력하는 방식</p>
            <p>어플리케이션 등 회사가 제공하는 홈페이지 외의 서비스를 통해 이용자가 자신의 개인정보를 입력하는 방식</p>


            <h5>제10조(개인정보의 이용)</h5>
            <p>회사는 개인정보를 다음 각 호의 경우에 이용합니다.</p>
            <p>공지사항의 전달 등 회사의 운영에 필요한 경우</p>
            <p>이용문의에 대한 회신, 불만의 처리 등 이용자에 대한 서비스 개선을 위한 경우</p>
            <p>회사의 서비스를 제공하기 위한 경우</p>
            <p>신규 서비스 개발을 위한 경우</p>
            <p>이벤트 및 행사 안내 등 마케팅을 위한 경우</p>
            <p>개인정보 및 관심에 기반한 이용자간 관계의 형성을 위한 경우</p>


            <h5>제11조(개인정보의 보유 및 이용기간)</h5>
            <p>회사는 이용자의 개인정보에 대해 개인정보의 수집·이용 목적이 달성을 위한 기간 동안 개인정보를 보유 및 이용합니다.</p>
            <p>전항에도 불구하고 회사는 내부 방침에 의해 서비스 부정이용기록은 부정 가입 및 이용 방지를 위하여 회원 탈퇴 시점으로부터 최대 1년간 보관합니다.</p>


            <h5>제12조(법령에 따른 개인정보의 보유 및 이용기간)</h5>
            <p>회사는 관계법령에 따라 다음과 같이 개인정보를 보유 및 이용합니다.</p>
            <p>전자상거래 등에서의 소비자보호에 관한 법률에 따른 보유정보 및 보유기간</p>
            <p>계약 또는 청약철회 등에 관한 기록 : 5년</p>
            <p>대금결제 및 재화 등의 공급에 관한 기록 : 5년</p>
            <p>소비자의 불만 또는 분쟁처리에 관한 기록 : 3년</p>
            <p>표시•광고에 관한 기록 : 6개월</p>
            <p>통신비밀보호법에 따른 보유정보 및 보유기간</p>
            <p>웹사이트 로그 기록 자료 : 3개월</p>
            <p>전자금융거래법에 따른 보유정보 및 보유기간</p>
            <p>전자금융거래에 관한 기록 : 5년</p>
            <p>위치정보의 보호 및 이용 등에 관한 법률</p>
            <p>개인위치정보에 관한 기록 : 6개월</p>


            <h5>제13조(개인정보의 파기원칙)</h5>
            <p>회사는 원칙적으로 이용자의 개인정보 처리 목적의 달성, 보유·이용기간의 경과 등 개인정보가 필요하지 않을 경우에는 해당 정보를 지체 없이 파기합니다.</p>


            <h5>제14조(서비스 미이용자에 대한 개인정보처리)</h5>
            <p>회사는 1년 동안 회사의 서비스를 이용하지 않은 이용자의 개인정보는 원칙적으로 이용자에게 사전통지하고 개인정보를 파기하거나 별도로 분리하여 저장합니다. </p>
            <p>회사는 장기 미이용 이용자의 개인정보는 별도로 분리되어 안전하게 보관하게 되며, 해당 이용자의 통지는 분리 보관 처리 일을 기준으로 최소 30일 이전에 전자우편주소로 전송됩니다.</p>
            <p>장기 미이용 이용자는 회사가 미이용자 DB를 별도로 분리하기 전에 계속 서비스를 이용하고자 하는 경우 웹사이트(이하 '모바일앱' 포함)에 로그인하시면 됩니다.</p>
            <p>장기 미이용 이용자는 웹사이트에 로그인할 경우 이용자의 동의에 따라 본인의 계정을 복원할 수 있습니다.</p>
            <p>회사는 분리 보관된 개인정보를 4년간 보관 후 지체없이 파기합니다.</p>


            <h5>제15조(개인정보파기절차)</h5>
            <p>이용자가 회원가입 등을 위해 입력한 정보는 개인정보 처리 목적이 달성된 후 별도의 DB로 옮겨져(종이의 경우 별도의 서류함) 내부 방침 및 기타 관련 법령에 의한 정보보호 사유에 따라(보유
              및 이용기간 참조) 일정 기간 저장된 후 파기 되어집니다.</p>
            <p>회사는 파기 사유가 발생한 개인정보를 개인정보보호 책임자의 승인절차를 거쳐 파기합니다.</p>


            <h5>제16조(개인정보파기방법)</h5>
            <p>회사는 전자적 파일형태로 저장된 개인정보는 기록을 재생할 수 없는 기술적 방법을 사용하여 삭제하며, 종이로 출력된 개인정보는 분쇄기로 분쇄하거나 소각 등을 통하여 파기합니다.</p>


            <h5>제17조(광고성 정보의 전송 조치)</h5>
            <p>회사는 전자적 전송매체를 이용하여 영리목적의 광고성 정보를 전송하는 경우 이용자의 명시적인 사전동의를 받습니다. 다만, 다음 각호 어느 하나에 해당하는 경우에는 사전 동의를 받지 않습니다
            </p>
            <p>회사가 재화 등의 거래관계를 통하여 수신자로부터 직접 연락처를 수집한 경우, 거래가 종료된 날로부터 6개월 이내에 회사가 처리하고 수신자와 거래한 것과 동종의 재화 등에 대한 영리목적의
              광고성 정보를 전송하려는 경우</p>
            <p>「방문판매 등에 관한 법률」에 따른 전화권유판매자가 육성으로 수신자에게 개인정보의 수집출처를 고지하고 전화권유를 하는 경우</p>
            <p>회사는 전항에도 불구하고 수신자가 수신거부의사를 표시하거나 사전 동의를 철회한 경우에는 영리목적의 광고성 정보를 전송하지 않으며 수신거부 및 수신동의 철회에 대한 처리 결과를 알립니다.
            </p>
            <p>회사는 오후 9시부터 그다음 날 오전 8시까지의 시간에 전자적 전송매체를 이용하여 영리목적의 광고성 정보를 전송하는 경우에는 제1항에도 불구하고 그 수신자로부터 별도의 사전 동의를
              받습니다.</p>
            <p>회사는 전자적 전송매체를 이용하여 영리목적의 광고성 정보를 전송하는 경우 다음의 사항 등을 광고성 정보에 구체적으로 밝힙니다.</p>
            <p>회사명 및 연락처</p>
            <p>수신 거부 또는 수신 동의의 철회 의사표시에 관한 사항의 표시</p>
            <p>회사는 전자적 전송매체를 이용하여 영리목적의 광고성 정보를 전송하는 경우 다음 각 호의 어느 하나에 해당하는 조치를 하지 않습니다.</p>
            <p>광고성 정보 수신자의 수신거부 또는 수신동의의 철회를 회피·방해하는 조치</p>
            <p>숫자·부호 또는 문자를 조합하여 전화번호·전자우편주소 등 수신자의 연락처를 자동으로 만들어 내는 조치</p>
            <p>영리목적의 광고성 정보를 전송할 목적으로 전화번호 또는 전자우편주소를 자동으로 등록하는 조치</p>
            <p>광고성 정보 전송자의 신원이나 광고 전송 출처를 감추기 위한 각종 조치</p>
            <p>영리목적의 광고성 정보를 전송할 목적으로 수신자를 기망하여 회신을 유도하는 각종 조치</p>


            <h5>제18조(아동의 개인정보보호)</h5>
            <p>회사는 만 14세 미만 아동의 개인정보 보호를 위하여 만 14세 이상의 이용자에 한하여 회원가입을 허용합니다.</p>
            <p>제1항에도 불구하고 회사는 이용자가 만 14세 미만의 아동일 경우에는, 그 아동의 법정대리인으로부터 그 아동의 개인정보 수집, 이용, 제공 등의 동의를 그 아동의 법정대리인으로부터
              받습니다.</p>
            <p>제2항의 경우 회사는 그 법정대리인의 이름, 생년월일, 성별, 중복가입확인정보(ID), 휴대폰 번호 등을 추가로 수집합니다.</p>


            <h5>제19조(개인정보 조회 및 수집동의 철회)</h5>
            <p>이용자 및 법정 대리인은 언제든지 등록되어 있는 자신의 개인정보를 조회하거나 수정할 수 있으며 개인정보수집 동의 철회를 요청할 수 있습니다.</p>
            <p>이용자 및 법정 대리인은 자신의 가입정보 수집 등에 대한 동의를 철회하기 위해서는 개인정보보호책임자 또는 담당자에게 서면, 전화 또는 전자우편주소로 연락하시면 회사는 지체 없이
              조치하겠습니다.</p>


            <h5>제20조(개인정보 정보변경 등)</h5>
            <p>이용자는 회사에게 전조의 방법을 통해 개인정보의 오류에 대한 정정을 요청할 수 있습니다.</p>
            <p>회사는 전항의 경우에 개인정보의 정정을 완료하기 전까지 개인정보를 이용 또는 제공하지 않으며 잘못된 개인정보를 제3자에게 이미 제공한 경우에는 정정 처리결과를 제3자에게 지체 없이 통지하여
              정정이 이루어지도록 하겠습니다.</p>


            <h5>제21조(이용자의 의무)</h5>
            <p>이용자는 자신의 개인정보를 최신의 상태로 유지해야 하며, 이용자의 부정확한 정보 입력으로 발생하는 문제의 책임은 이용자 자신에게 있습니다.</p>
            <p>타인의 개인정보를 도용한 회원가입의 경우 이용자 자격을 상실하거나 관련 개인정보보호 법령에 의해 처벌받을 수 있습니다.</p>
            <p>이용자는 전자우편주소, 비밀번호 등에 대한 보안을 유지할 책임이 있으며 제3자에게 이를 양도하거나 대여할 수 없습니다.</p>


            <h5>제22조(개인정보 유출 등에 대한 조치)</h5>
            <p>회사는 개인정보의 분실·도난·유출(이하 "유출 등"이라 한다) 사실을 안 때에는 지체 없이 다음 각 호의 모든 사항을 해당 이용자에게 알리고 방송통신위원회 또는 한국인터넷진흥원에
              신고합니다.</p>
            <p>유출 등이 된 개인정보 항목</p>
            <p>유출 등이 발생한 시점</p>
            <p>이용자가 취할 수 있는 조치</p>
            <p>정보통신서비스 제공자 등의 대응 조치</p>
            <p>이용자가 상담 등을 접수할 수 있는 부서 및 연락처</p>


            <h5>제23조(개인정보 유출 등에 대한 조치의 예외)</h5>
            <p>회사는 전조에도 불구하고 이용자의 연락처를 알 수 없는 등 정당한 사유가 있는 경우에는 회사의 홈페이지에 30일 이상 게시하는 방법으로 전조의 통지를 갈음하는 조치를 취할 수 있습니다.
            </p>


            <h5>제24조(이용자의 쿠키 설치 선택권)</h5>
            <p>이용자는 쿠키 설치에 대한 선택권을 가지고 있습니다. 따라서 이용자는 웹브라우저에서 옵션을 설정함으로써 모든 쿠키를 허용하거나, 쿠키가 저장될 때마다 확인을 거치거나, 아니면 모든 쿠키의
              저장을 거부할 수도 있습니다.</p>
            <p>다만, 쿠키의 저장을 거부할 경우에는 로그인이 필요한 회사의 일부 서비스는 이용에 어려움이 있을 수 있습니다.</p>


            <h5>제25조(쿠키 설치 허용 지정 방법)</h5>
            <p>쿠키 설치 허용 여부를 지정하는 방법(Internet Explorer의 경우)은 다음과 같습니다.</p>
            <p>[도구] 메뉴에서 [인터넷 옵션]을 선택합니다.</p>
            <p>[개인정보 탭]을 클릭합니다.</p>
            <p>[고급] 설정에서 설정하시면 됩니다.</p>


            <h5>부칙</h5>
            <p>제1조 본 방침은 2023.03.10부터 시행됩니다.</p>
          </div>
          <div class="modal-footer">
            <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">닫기</button>
          </div>
        </div>
      </div>
    </div>
    <div class="modal fade" id="exampleModal4" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
      <div class="modal-dialog modal-lg">
        <div class="modal-content">
          <div class="modal-header">
            <h5 class="modal-title" id="exampleModalLabel">위치기반 서비스 이용 약관</h5>
            <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
          </div>
          <div class="modal-body" style="height:400px; overflow-y:scroll; padding-left:10px;">
            <h5>제1조(목적)</h5>
            <p>본 약관은 회원(OVCOS의 서비스 약관에 동의한 자를 말하며 이하 '회원'이라고 합니다)이 OVCOS(이하 '회사'라고 합니다)가 제공하는 웹페이지의 서비스를 이용함에 있어 회원과 회사의
              권리 및 의무, 기타 제반 사항을 정하는 것을 목적으로 합니다.</p>


            <h5>제2조(가입자격)</h5>
            <p>서비스에 가입할 수 있는 회원은 위치기반서비스를 이용할 수 있는 이동전화 단말기의 소유자 본인이어야 합니다.</p>


            <h5>제3조(서비스 가입)</h5>
            <p>회사는 다음 각 호에 해당하는 가입신청을 승낙하지 않을 수 있습니다.</p>
            <p>실명이 아니거나 타인의 명의를 사용하는 등 허위로 신청하는 경우</p>
            <p>고객 등록 사항을 누락하거나 오기하여 신청하는 경우</p>
            <p>공공질서 또는 미풍양속을 저해하거나 저해할 목적을 가지고 신청하는 경우</p>
            <p>기타 회사가 정한 이용신청 요건이 충족되지 않았을 경우</p>


            <h5>제4조(서비스 해지)</h5>
            <p>회원은 회사가 정한 절차를 통해 서비스 해지를 신청할 수 있습니다.</p>


            <h5>제5조(이용약관의 효력 및 변경)</h5>
            <p>본 약관은 서비스를 신청한 고객 또는 개위치정보주체가 회사가 정한 소정의 절차에 따라 회원으로 등록함으로써 효력이 발생합니다.</p>
            <p>서비스를 신청한 고객 또는 개인위치정보주체가 온라인에서 본 약관을 모두 읽고 "동의하기" 버튼을 클릭하였을 경우 본 약관의 내용을 모두 읽고 이를 충분히 이해하였으며, 그 적용에 동의한
              것으로 봅니다.</p>
            <p>본 약관에 대하여 동의하지 않은 경우, 회사가 개인위치정보를 기반으로 제공하는 각종 혜택 및 편의제공에 일부 제한이 발생할 수 있습니다.</p>
            <p>회사는 필요한 경우 '위치 정보의 보호 및 이용 등에 관한 법률', '콘텐츠산업 진흥법', '전자상거래 등에서의 소비자보호에 관한 법률', '소비자기본법', '약관의 규제에 관한 법률 등
              관계법령(이하 '관계법령'이라 합니다)의 범위 내에서 본 약관을 개정할 수 있습니다.</p>
            <p>회사가 약관을 개정할 경우 기존약관과 개정약관 및 개정약관의 적용일자와 개정사유를 명시하여 현행약관과 함께 그 적용일자 10일 전부터 적용일 이후 상당한 기간 동안 회사의 웹페이지를 통해
              공지합니다. 다만, 개정약관의 내용이 회원에게 새로운 의무를 부과하거나 권리를 제한하는 내용인 경우 그 적용일자 30일 전부터 상당한 기간 동안 이를 회사의 웹페이지를 통해 공지하고,
              회원에게 전자적 형태로 약관의 개정사실을 발송하여 고지합니다.</p>


            <h5>제6조(약관 외 준칙)</h5>
            <p>본 약관은 신의성실의 원칙에 따라 공정하게 적용하며, 본 약관에 명시되지 아니한 사항에 대하여는 관계법령 및 건전한 거래관행에 따릅니다.</p>


            <h5>제7조(서비스의 내용)</h5>
            <p>회사가 제공하는 서비스는 아래와 같습니다. </p>
            <p>위치기반 컨텐츠 분류를 위한 지오 태깅(Geo Tagging)</p>
            <p>회사 및 제휴사의 상품 및 서비스 정보 제공</p>
            <p>회사 및 제휴사의 마케팅 서비스 제공</p>
            <p>회사 및 제휴사의 프로모션 혜택 알림 제공</p>


            <h5>제8조(서비스 이용요금)</h5>
            <p>회사의 서비스는 무료제공을 원칙으로 합니다. </p>
            <p>전항에도 불구하고 무선 서비스 이용시 발생하는 데이터 통신료는 별도이며, 이 때 부과되는 데이터 통신료는 회원이 가입한 각 이동통신사의 정책에 따릅니다.</p>
            <p>멀티미디어 메시지 서비스(MMS) 등으로 게시물을 등록할 경우 발생하는 요금은 각 이동통신사의 요금정책에 따라 회원이 부담합니다.</p>


            <h5>제9조(서비스내용 변경 통지 등)</h5>
            <p>회사가 서비스 내용을 변경하거나 종료하는 경우 회사는 회원이 등록한 전자우편 주소로 이메일을 발송하여 서비스 내용의 변경 사항 또는 종료를 사전 일주일 전에 통지합니다.</p>
            <p>전항의 경우 불특정 다수의 회원을 상대로 통지하는 때에는 회사의 웹페이지 등을 통해 공지함으로써 회원들에게 통지할 수 있습니다. </p>


            <h5>제10조(서비스이용의 제한 및 중지)</h5>
            <p>회사는 아래 각 호에 해당하는 사유가 발생한 경우에는 회원의 서비스 이용을 제한하거나 중지시킬 수 있습니다. </p>
            <p>회원이 회사의 서비스 운영을 고의 또는 과실로 방해하는 경우 </p>
            <p>서비스용 설비 점검, 보수 또는 공사로 인하여 부득이한 경우 </p>
            <p>전기통신사업법에 규정된 기간통신사업자가 서비스를 중지했을 경우</p>
            <p>국가비상사태, 서비스 설비의 장애 또는 서비스 이용의 폭주 등으로 서비스 이용에 지장이 있는 때 </p>
            <p>기타 중대한 사유로 회사가 서비스 제공을 지속하는 것이 곤란한 경우 </p>
            <p>회사가 전항에 따라 서비스의 이용을 제한하거나 중지한 때에는 해당사실을 인터넷 등에 공지하거나 고객에게 통지합니다. 다만 회사가 통제할 수 없는 사유로 인하여 서비스를 중단하게 되는 경우
              이를 사후에 통지할 수 있습니다. </p>
            <p>개인위치정보를 수집한 통신단말장치가 문자, 음성 또는 영상 수신기능을 갖추지 아니한 경우</p> 
            <p>회원이 다른 방법을 요청한 경우 </p>


            <h5>제11조(개인위치정보 주체의 권리)</h5>
            <p>회원은 회사에 대하여 언제든지 개인위치정보를 이용한 위치기반서비스 제공 및 개인위치정보의 제3자 제공에 대한 동의의 전부 또는 일부를 철회할 수 있습니다. 이 경우 회사는 수집한
              개인위치정보 및 위치정보 이용, 제공사실 확인자료를 파기합니다.</p> 
            <p>회원은 회사에 대하여 언제든지 개인위치정보의 수집, 이용 또는 제공의 일시적인 중지를 요구할 수 있습니다. </p>
            <p>회원은 회사에 대하여 아래 각 호의 자료에 대한 열람 또는 고지를 요구할 수 있고, 당해 자료에 오류가 있는 경우에는 그 정정을 요구할 수 있습니다. 이 경우 회사는 정당한 사유 없이
              회원의 요구를 거절할 수 없습니다.</p>
            <p>본인에 대한 위치정보 이용, 제공사실 확인자료 </p>
            <p>본인의 위치정보가 제3자에게 제공된 이유 및 내용</p>
            <p>회원은 회사가 정한 절차에 따라 제1항 내지 제3항의 권리를 행사할 수 있습니다. </p>


            <h5>제12조(위치정보관리책임자의 지정)</h5>
            <p>회사는 위치정보를 적절히 관리, 보호하고 개인위치정보주체의 불만을 원활히 처리할 수 있도록 실질적인 책임을 질 수 있는 지위에 있는 자를 위치정보의 관리책임자로 지정하고 운영합니다.</p>
            <p>회사의 위치정보관리책임자는 위치기반서비스의 제공에 관한 제반 사항을 담당 · 관리하는 부서의 OVCOS으로서, 구체적인 사항은 본 약관의 부칙에 따릅니다.</p>


            <h5>제13조(손해배상)</h5>
            <p>회사가 위치정보의 보호 및 이용 등에 관한 법률 제15조 내지 제26조의 규정을 위반한 행위를 하여 회원에게 손해가 발생한 경우 회원은 회사에 대하여 손해배상 청구를 할 수 있습니다.
            </p>
            <p>회원이 고의 또는 과실로 본 약관의 규정을 위반하여 회사에 손해가 발생한 경우 회원은 회사에 발생한 모든 손해를 배상해야 합니다.</p>


            <h5>제14조(면책)</h5>
            <p>회사는 다음 각 호의 사유로 서비스를 제공할 수 없는 경우 이로 인하여 회원에게 발생한 손해에 대한 책임을 부담하지 않습니다. </p>
            <p>천재지변 또는 이에 준하는 불가항력의 상태가 있는 경우</p>
            <p>제3자의 고의적인 서비스 방해가 있는 경우 </p>
            <p>회원의 귀책사유로 서비스 이용에 장애가 있는 경우 </p>
            <p>기타 회사의 고의 또는 과실이 없는 사유에 해당하는 경우 </p>
            <p>회사는 서비스 및 서비스에 게재된 정보, 자료, 사실의 신뢰도 및 정확성 등에 대한 보증을 하지 않으며 이로 인하여 회원에게 발생한 손해에 대하여 책임을 부담하지 않습니다.</p>
            <p>회사는 회원이 서비스를 이용하며 기대하는 수익을 상실한 것에 대한 책임과, 그 밖의 서비스를 통하여 얻은 자료로 인하여 회원에게 발생한 손해에 대한 책임을 부담하지 않습니다. </p>


            <h5>제15조(분쟁의 조정)</h5>
            <p>회사는 위치정보와 관련된 분쟁에 대해 당사자간 협의가 이루어지지 아니하거나 협의를 할 수 없는 경우에는 '위치정보의 보호 및 이용 등에 관한 법률' 제28조의 규정에 따라 방송통신위원회에
              재정을 신청할 수 있습니다.</p>
            <p>회사 또는 고객은 위치정보와 관련된 분쟁에 대해 당사자간 협의가 이루어지지 아니하거나 협의를 할 수 없는 경우에는 '개인정보보호법' 제43조의 규정에 따라 개인정보분쟁조정위원회에 조정을
              신청할 수 있습니다.</p>


            <h5>제16조(회사의 연락처)</h5>
            <p>회사의 상호 및 주소 등은 다음과 같습니다.</p> 
            <p>법인명 : OVCOS</p>
            <p>대표이사 : OVCOS</p>
            <p>소재지 : 서울 강남구 테헤란로 130 (역삼동, 호산빌딩)</p>
            <p>연락처 : OVCOS</p>


            <h5>부 칙</h5>

            <h6>제1조(시행일)</h6>
            <p>본 약관은 2023.03.10부터 시행합니다.</p>




            <h5>제2조(위치정보관리책임자)</h5>

            <p>위치정보관리책임자는 2023.03.10를 기준으로 다음과 같이 지정합니다. </p>

            <p>소속 : OVCOS</p>
            <p>성명 : OVCOS</p>
            <p>직위 : OVCOS</p>
            <p>전화 : OVCOS</p>

          </div>
          <div class="modal-footer">
            <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">닫기</button>
          </div>
        </div>
      </div>
    </div>
    <div class="modal fade" id="exampleModal5" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
      <div class="modal-dialog modal-lg">
        <div class="modal-content">
          <div class="modal-header">
            <h5 class="modal-title" id="exampleModalLabel">광고성 수신 정보 동의</h5>
            <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
          </div>
          <div class="modal-body" style="height:400px; overflow-y:scroll; padding-left:10px;">
            <h5>이용 목적</h5>
            <p>이벤트 정보 및 참여기회 제공, 광고성 정보 제공 등 마케팅 및 프로모션, 신규 컨텐츠 알림이나 이벤트 정보안내 등 고객 지향적인 마케팅</p>

            <h5>활용 항목</h5>
            <p>이메일, 휴대폰번호, APP.PUSH</p>

            <h5>보유기간</h5>
            <p>동의 철회 또는 회원 탈퇴 시까지</p>

            <p>광고성 정보를 PUSH로 전송하고 있습니다. 회사는 광고성 정보 전송에 대한 고객의 사전 동의를 얻고 PUSH의 본문란에 아래와 같이 고객이 광고성 정보임을 쉽게 알아볼 수 있도록
              조치합니다.</p>
            <p>- PUSH 본문란 : ‘(광고)’ 라는 문구를 본문 맨 처음에 빈칸 없이 한글로 표시합니다.</p>

            <p>* 위의 개인정보 수집・이용에 대한 동의를 거부할 권리가 있습니다. 그러나, 동의하지 않으셔도 회원가입 및 일부 서비스 이용이 가능합니다.</p>
          </div>
          <div class="modal-footer">
            <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">닫기</button>
          </div>
        </div>
      </div>
    </div>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js"
      integrity="sha384-kenU1KFdBIe4zVF0s0G1M5b4hcpxyD9F7jL+jjXkk+Q2h455rYXK/7HAuoJl+0I4"
      crossorigin="anonymous"></script>
    <script>
      function check() {
        let checkbox = $(":checkbox[name='admin']");
        let ness = $(":checkbox[class='ness']");
        let nextButton = document.getElementsByClassName("next-btn");

        for (let i = 0; i < checkbox.length; i++) {
          let $this = $(checkbox[i]);

          if (!$this.is(":checked")) {
            ; alert('필수약관에 모두 동의하여 주십시오.');
            $this.focus();
            return false;
          } else if (ness.checked) {
            nextButton.style.backgroundColor = "green";
            nextButton.disabled = false;
          }

        }
      }

      function color() {
        let checkbox = $(":checkbox[name='admin']");

        for (let i = 0; i < checkbox.length; i++) {
          let $this = $(checkbox[i]);

          if ($this.is(":checked")) {
            alert("안녕")
            /* $(this).css("backgroundColor", "red"); */
          }
        }
      }

    </script>
    <script>
      const agreeCheckbox = document.querySelector('#agree_checkbox');
      const selectInput = document.querySelector('#select');

      agreeCheckbox.addEventListener('change', function () {
        if (agreeCheckbox.checked) {

          selectInput.value = 'Y';
        } else {
          selectInput.value = 'N';
        }

        console.log(selectInput.value);
      });
    </script>


</body>
  </html>
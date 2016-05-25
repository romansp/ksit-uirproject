<%@ Page Language="C#" AutoEventWireup="true" Inherits="labs_lab5_Zadanie2_flip" Codebehind="Zadanie2_flip.aspx.cs" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Задание №2 (переворот) / Лаб.раб.№5 / КСИТ</title>
    <style type="text/css">
    /* entire container, keeps perspective */
    .flip-container {
      -webkit-perspective: 1000;
      -moz-perspective: 1000;
      -o-perspective: 1000;
      perspective: 1000;
    }
    
    /* flip the pane when hovered */
    .flip-container:hover .flipper, .flip-container.hover .flipper {
    -webkit-transform: rotateY(180deg);
    -moz-transform: rotateY(180deg);
    -o-transform: rotateY(180deg);
    transform: rotateY(180deg);
    }

    .flip-container, .front, .back {
      width: 120px;
      height: 120px;
      float: left;
    }

    /* flip speed goes here */
    .flipper {
      -webkit-transition: 0.6s;
      -webkit-transform-style: preserve-3d;
      -moz-transition: 0.6s;
      -moz-transform-style: preserve-3d;
      -o-transition: 0.6s;
      -o-transform-style: preserve-3d;
      transition: 0.6s;
      transform-style: preserve-3d;
      position: relative;
    }

    /* hide back of pane during swap */
    .front, .back {
      -webkit-backface-visibility: hidden;
      -moz-backface-visibility: hidden;
      -o-backface-visibility: hidden;
      backface-visibility: hidden;
      position: absolute;
      top: 0;
      left: 0;
    }

    /* front pane, placed above back */
    .front {
      z-index: 2;
    }

    /* back, initially hidden pane */
    .back {
      -webkit-transform: rotateY(180deg);
      -moz-transform: rotateY(180deg);
      -o-transform: rotateY(180deg);
      transform: rotateY(180deg);
    }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <p style="color: red;">Необходима поддержка браузером CSS3 Transforms. Работает только в Chrome или Firefox последних версий.</p>
    <div class="flip-container" ontouchstart="this.classList.toggle('hover');">
      <div class="flipper">
        <div class="front" style="background: url(../../images/lab5/sb_1_q.png) 0 0 no-repeat; border: 1px; border-style: solid;">
        </div>
        <div class="back" style="background: url(../../images/lab5/sb_1_a.png) 0 0 no-repeat; border: 1px; border-style: solid;">
        </div>
      </div>
    </div>
    <div class="flip-container" ontouchstart="this.classList.toggle('hover');">
      <div class="flipper">
        <div class="front" style="background: url(../../images/lab5/sb_2_q.png) 0 0 no-repeat; border: 1px; border-style: solid;">
        </div>
        <div class="back" style="background: url(../../images/lab5/sb_2_a.png) 0 0 no-repeat; border: 1px; border-style: solid;">
        </div>
      </div>
    </div>
    <div class="flip-container" ontouchstart="this.classList.toggle('hover');">
      <div class="flipper">
        <div class="front" style="background: url(../../images/lab5/sb_3_q.png) 0 0 no-repeat; border: 1px; border-style: solid;">
        </div>
        <div class="back" style="background: url(../../images/lab5/sb_3_a.png) 0 0 no-repeat; border: 1px; border-style: solid;">
        </div>
      </div>
    </div>
    <div class="flip-container" ontouchstart="this.classList.toggle('hover');">
      <div class="flipper">
        <div class="front" style="background: url(../../images/lab5/sb_4_q.png) 0 0 no-repeat; border: 1px; border-style: solid;">
        </div>
        <div class="back" style="background: url(../../images/lab5/sb_4_a.png) 0 0 no-repeat; border: 1px; border-style: solid;">
        </div>
      </div>
    </div>
    <div class="flip-container" ontouchstart="this.classList.toggle('hover');">
      <div class="flipper">
        <div class="front" style="background: url(../../images/lab5/sb_5_q.png) 0 0 no-repeat; border: 1px; border-style: solid;">
        </div>
        <div class="back" style="background: url(../../images/lab5/sb_5_a.png) 0 0 no-repeat; border: 1px; border-style: solid;">
        </div>
      </div>
    </div>
    </form>
</body>
</html>

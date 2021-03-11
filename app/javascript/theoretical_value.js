function calc() {
  if (document.getElementById("treatment-dose1") != null) {
    const dose1Input = document.getElementById('treatment-dose1');
    dose1Input.addEventListener('keyup', ()=> {
      const inputDose1 = dose1Input.value;
      const theoreticalValue1 = JSON.parse(document.getElementById('theoretical-value1').dataset.json);
      const addTheoreticalPercentage1 = document.getElementById('theoretical-percentage1');
      const calc1 = Math.round((inputDose1 * 100 / theoreticalValue1) * 100) / 100;
      addTheoreticalPercentage1.innerHTML = `${calc1}％`;
    });
  }

  if (document.getElementById("treatment-dose2") != null) {
    const dose2Input = document.getElementById('treatment-dose2');
    dose2Input.addEventListener('keyup', ()=> {
      const inputDose2 = dose2Input.value;
      const theoreticalValue2 = JSON.parse(document.getElementById('theoretical-value2').dataset.json);
      const addTheoreticalPercentage2 = document.getElementById('theoretical-percentage2');
      const calc2 = Math.round((inputDose2 * 100 / theoreticalValue2) * 100) / 100;
      addTheoreticalPercentage2.innerHTML = `${calc2}％`;
    });
  };

  if (document.getElementById("treatment-dose3") != null) {
    const dose3Input = document.getElementById('treatment-dose3');
    dose3Input.addEventListener('keyup', ()=> {
      const inputDose3 = dose3Input.value;
      const theoreticalValue3 = JSON.parse(document.getElementById('theoretical-value3').dataset.json);
      const addTheoreticalPercentage3 = document.getElementById('theoretical-percentage3');
      const calc3 = Math.round((inputDose3 * 100 / theoreticalValue3) * 100) / 100;
      addTheoreticalPercentage3.innerHTML = `${calc3}％`;
    });
  };

  if (document.getElementById("treatment-dose4") != null) {
    const dose4Input = document.getElementById('treatment-dose4');
    dose4Input.addEventListener('keyup', ()=> {
      const inputDose4 = dose4Input.value;
      const theoreticalValue4 = JSON.parse(document.getElementById('theoretical-value4').dataset.json);
      const addTheoreticalPercentage4 = document.getElementById('theoretical-percentage4');
      const calc4 = Math.round((inputDose4 * 100 / theoreticalValue4) * 100) / 100;
      addTheoreticalPercentage4.innerHTML = `${calc4}％`;
    });
  };

  if (document.getElementById("treatment-dose5") != null) {
    const dose5Input = document.getElementById('treatment-dose5');
    dose5Input.addEventListener('keyup', ()=> {
      const inputDose5 = dose5Input.value;
      const theoreticalValue5 = JSON.parse(document.getElementById('theoretical-value5').dataset.json);
      const addTheoreticalPercentage5 = document.getElementById('theoretical-percentage5');
      const calc5 = Math.round((inputDose5 * 100 / theoreticalValue5) * 100) / 100;
      addTheoreticalPercentage5.innerHTML = `${calc5}％`;
    });
  };

  if (document.getElementById("treatment-dose6") != null) {
    const dose6Input = document.getElementById('treatment-dose6');
    dose6Input.addEventListener('keyup', ()=> {
      const inputDose6 = dose6Input.value;
      const theoreticalValue6 = JSON.parse(document.getElementById('theoretical-value6').dataset.json);
      const addTheoreticalPercentage6 = document.getElementById('theoretical-percentage6');
      const calc6 = Math.round((inputDose6 * 100 / theoreticalValue6) * 100) / 100;
      addTheoreticalPercentage6.innerHTML = `${calc6}％`;
    });
  };

  if (document.getElementById("treatment-dose7") != null) {
    const dose7Input = document.getElementById('treatment-dose7');
    dose7Input.addEventListener('keyup', ()=> {
      const inputDose7 = dose7Input.value;
      const theoreticalValue7 = JSON.parse(document.getElementById('theoretical-value7').dataset.json);
      const addTheoreticalPercentage7 = document.getElementById('theoretical-percentage7');
      const calc7 = Math.round((inputDose7 * 100 / theoreticalValue7) * 100) / 100;
      addTheoreticalPercentage7.innerHTML = `${calc7}％`;
    });
  };

  if (document.getElementById("treatment-dose8") != null) {
    const dose8Input = document.getElementById('treatment-dose8');
    dose8Input.addEventListener('keyup', ()=> {
      const inputDose8 = dose8Input.value;
      const theoreticalValue8 = JSON.parse(document.getElementById('theoretical-value8').dataset.json);
      const addTheoreticalPercentage8 = document.getElementById('theoretical-percentage8');
      const calc8 = Math.round((inputDose8 * 100 / theoreticalValue8) * 100) / 100;
      addTheoreticalPercentage8.innerHTML = `${calc8}％`;
    });
  };

};

window.addEventListener("load", calc);
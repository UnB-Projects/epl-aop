package br.unb.cic.epl.spl.height;

public aspect HeightTest {
	public void br.unb.cic.epl.spl.LiteralTest.testHeight() {
		br.unb.cic.epl.spl.Literal lit = new br.unb.cic.epl.spl.Literal(1000);
		assertEquals(new Integer(1), lit.height());
	}
	
	public void br.unb.cic.epl.spl.AddTest.testHeight() {
		br.unb.cic.epl.spl.add.Add add = new br.unb.cic.epl.spl.add.Add(
			 	new br.unb.cic.epl.spl.Literal(1000),
			 	new br.unb.cic.epl.spl.Literal(2000));
		assertEquals(new Integer(2), add.height());
	}
	
	public void br.unb.cic.epl.spl.SubTest.testHeight() {
		br.unb.cic.epl.spl.sub.Sub sub = new br.unb.cic.epl.spl.sub.Sub(
				new br.unb.cic.epl.spl.add.Add(
					 	new br.unb.cic.epl.spl.Literal(1000),
					 	new br.unb.cic.epl.spl.Literal(2000)),
			 	new br.unb.cic.epl.spl.Literal(2000));
		assertEquals(new Integer(3), sub.height());
	}
	
	public void br.unb.cic.epl.spl.MultTest.testHeight() {
		br.unb.cic.epl.spl.mult.Mult mult = new br.unb.cic.epl.spl.mult.Mult(
			 	new br.unb.cic.epl.spl.Literal(1000),
			 	new br.unb.cic.epl.spl.add.Add(
					 	new br.unb.cic.epl.spl.Literal(1000),
					 	new br.unb.cic.epl.spl.sub.Sub(
								new br.unb.cic.epl.spl.add.Add(
									 	new br.unb.cic.epl.spl.Literal(1000),
									 	new br.unb.cic.epl.spl.Literal(2000)),
							 	new br.unb.cic.epl.spl.Literal(2000))));
		assertEquals(new Integer(5), mult.height());
	}
}

package br.unb.cic.epl.spl;

import junit.framework.TestCase;

public class SubTest extends TestCase {
	public void testPrint() {
		Expression lhs = new Literal(2);
		Expression rhs = new Literal(3);
		Expression subExpression = new br.unb.cic.epl.spl.sub.Sub(lhs,rhs);
		assertEquals("(" + lhs.print() + " - " + rhs.print() + ")", subExpression.print());
	}
}

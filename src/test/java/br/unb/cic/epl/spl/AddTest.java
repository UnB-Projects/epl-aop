package br.unb.cic.epl.spl;

import junit.framework.TestCase;

public class AddTest extends TestCase {
	public void testPrint() {
		Expression lhs = new Literal(2);
		Expression rhs = new Literal(3);
		Expression addExpression = new br.unb.cic.epl.spl.add.Add(lhs,rhs);
		assertEquals("(" + lhs.print() + " + " + rhs.print() + ")", addExpression.print());
	}
}

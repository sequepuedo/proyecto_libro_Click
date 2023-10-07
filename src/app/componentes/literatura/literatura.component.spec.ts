import { ComponentFixture, TestBed } from '@angular/core/testing';

import { LiteraturaComponent } from './literatura.component';

describe('LiteraturaComponent', () => {
  let component: LiteraturaComponent;
  let fixture: ComponentFixture<LiteraturaComponent>;

  beforeEach(() => {
    TestBed.configureTestingModule({
      declarations: [LiteraturaComponent]
    });
    fixture = TestBed.createComponent(LiteraturaComponent);
    component = fixture.componentInstance;
    fixture.detectChanges();
  });

  it('should create', () => {
    expect(component).toBeTruthy();
  });
});
